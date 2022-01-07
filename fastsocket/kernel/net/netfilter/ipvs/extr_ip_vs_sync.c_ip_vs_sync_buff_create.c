
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_sync_mesg {int dummy; } ;
struct ip_vs_sync_buff {unsigned char* head; unsigned char* end; int firstuse; TYPE_1__* mesg; } ;
struct TYPE_2__ {int size; scalar_t__ spare; scalar_t__ nr_conns; int syncid; int version; scalar_t__ reserved; } ;


 int GFP_ATOMIC ;
 int SYNC_PROTO_VER ;
 int ip_vs_master_syncid ;
 int jiffies ;
 int kfree (struct ip_vs_sync_buff*) ;
 void* kmalloc (int,int ) ;
 int sync_send_mesg_maxlen ;

__attribute__((used)) static inline struct ip_vs_sync_buff * ip_vs_sync_buff_create(void)
{
 struct ip_vs_sync_buff *sb;

 if (!(sb=kmalloc(sizeof(struct ip_vs_sync_buff), GFP_ATOMIC)))
  return ((void*)0);

 if (!(sb->mesg=kmalloc(sync_send_mesg_maxlen, GFP_ATOMIC))) {
  kfree(sb);
  return ((void*)0);
 }
 sb->mesg->reserved = 0;
 sb->mesg->version = SYNC_PROTO_VER;
 sb->mesg->syncid = ip_vs_master_syncid;
 sb->mesg->size = sizeof(struct ip_vs_sync_mesg);
 sb->mesg->nr_conns = 0;
 sb->mesg->spare = 0;
 sb->head = (unsigned char *)sb->mesg + sizeof(struct ip_vs_sync_mesg);
 sb->end = (unsigned char *)sb->mesg + sync_send_mesg_maxlen;

 sb->firstuse = jiffies;
 return sb;
}
