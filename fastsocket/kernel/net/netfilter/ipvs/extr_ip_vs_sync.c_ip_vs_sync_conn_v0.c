
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ip_vs_sync_mesg_v0 {int size; int nr_conns; } ;
struct ip_vs_sync_conn_v0 {void* state; void* flags; int daddr; int vaddr; int caddr; int dport; int vport; int cport; int protocol; scalar_t__ reserved; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct TYPE_9__ {int ip; } ;
struct TYPE_8__ {int ip; } ;
struct TYPE_7__ {int ip; } ;
struct ip_vs_conn {scalar_t__ af; int flags; int state; struct ip_vs_conn* control; int in_pkts; int in_seq; TYPE_3__ daddr; TYPE_2__ vaddr; TYPE_1__ caddr; int dport; int vport; int cport; int protocol; } ;
struct TYPE_10__ {scalar_t__ head; scalar_t__ end; scalar_t__ mesg; } ;


 scalar_t__ AF_INET ;
 int FULL_CONN_SIZE ;
 int IP_VS_CONN_F_HASHED ;
 int IP_VS_CONN_F_ONE_PACKET ;
 int IP_VS_CONN_F_SEQ_MASK ;
 int IP_VS_CONN_F_TEMPLATE ;
 int SIMPLE_CONN_SIZE ;
 int atomic_add_return (int,int *) ;
 TYPE_4__* curr_sb ;
 int curr_sb_lock ;
 void* htons (int) ;
 TYPE_4__* ip_vs_sync_buff_create_v0 () ;
 int ip_vs_sync_conn (struct ip_vs_conn*,int) ;
 int ip_vs_sync_conn_needed (struct ip_vs_conn*,int) ;
 int memcpy (struct ip_vs_sync_conn_options*,int *,int) ;
 int pr_err (char*) ;
 int sb_queue_tail (TYPE_4__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_sync_threshold () ;
 scalar_t__ unlikely (int) ;

void ip_vs_sync_conn_v0(struct ip_vs_conn *cp, int pkts)
{
 struct ip_vs_sync_mesg_v0 *m;
 struct ip_vs_sync_conn_v0 *s;
 int len;

 if (unlikely(cp->af != AF_INET))
  return;

 if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
  return;

 if (!ip_vs_sync_conn_needed(cp, pkts))
  return;
 spin_lock(&curr_sb_lock);
 if (!curr_sb) {
  if (!(curr_sb=ip_vs_sync_buff_create_v0())) {
   spin_unlock(&curr_sb_lock);
   pr_err("ip_vs_sync_buff_create failed.\n");
   return;
  }
 }

 len = (cp->flags & IP_VS_CONN_F_SEQ_MASK) ? FULL_CONN_SIZE :
  SIMPLE_CONN_SIZE;
 m = (struct ip_vs_sync_mesg_v0 *)curr_sb->mesg;
 s = (struct ip_vs_sync_conn_v0 *)curr_sb->head;


 s->reserved = 0;
 s->protocol = cp->protocol;
 s->cport = cp->cport;
 s->vport = cp->vport;
 s->dport = cp->dport;
 s->caddr = cp->caddr.ip;
 s->vaddr = cp->vaddr.ip;
 s->daddr = cp->daddr.ip;
 s->flags = htons(cp->flags & ~IP_VS_CONN_F_HASHED);
 s->state = htons(cp->state);
 if (cp->flags & IP_VS_CONN_F_SEQ_MASK) {
  struct ip_vs_sync_conn_options *opt =
   (struct ip_vs_sync_conn_options *)&s[1];
  memcpy(opt, &cp->in_seq, sizeof(*opt));
 }

 m->nr_conns++;
 m->size += len;
 curr_sb->head += len;


 if (curr_sb->head + FULL_CONN_SIZE > curr_sb->end) {
  sb_queue_tail(curr_sb);
  curr_sb = ((void*)0);
 }
 spin_unlock(&curr_sb_lock);


 cp = cp->control;
 if (cp) {
  if (cp->flags & IP_VS_CONN_F_TEMPLATE)
   pkts = atomic_add_return(1, &cp->in_pkts);
  else
   pkts = sysctl_sync_threshold();
  ip_vs_sync_conn(cp->control, pkts);
 }
}
