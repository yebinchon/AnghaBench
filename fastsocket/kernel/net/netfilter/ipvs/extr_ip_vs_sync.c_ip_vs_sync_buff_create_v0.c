
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sync_mesg_v0 {int size; int syncid; scalar_t__ nr_conns; } ;
struct ip_vs_sync_buff {unsigned char* head; unsigned char* end; int firstuse; void* mesg; } ;


 int GFP_ATOMIC ;
 int ip_vs_master_syncid ;
 int jiffies ;
 int kfree (struct ip_vs_sync_buff*) ;
 void* kmalloc (int,int ) ;
 int sync_send_mesg_maxlen ;

__attribute__((used)) static inline struct ip_vs_sync_buff * ip_vs_sync_buff_create_v0(void)
{
 struct ip_vs_sync_buff *sb;
 struct ip_vs_sync_mesg_v0 *mesg;

 if (!(sb=kmalloc(sizeof(struct ip_vs_sync_buff), GFP_ATOMIC)))
  return ((void*)0);

 if (!(sb->mesg=kmalloc(sync_send_mesg_maxlen, GFP_ATOMIC))) {
  kfree(sb);
  return ((void*)0);
 }
 mesg = (struct ip_vs_sync_mesg_v0 *)sb->mesg;
 mesg->nr_conns = 0;
 mesg->syncid = ip_vs_master_syncid;
 mesg->size = 4;
 sb->head = (unsigned char *)mesg + 4;
 sb->end = (unsigned char *)mesg + sync_send_mesg_maxlen;
 sb->firstuse = jiffies;
 return sb;
}
