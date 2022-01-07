
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aarp_entry {int packet_queue; } ;


 int kfree (struct aarp_entry*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void __aarp_expire(struct aarp_entry *a)
{
 skb_queue_purge(&a->packet_queue);
 kfree(a);
}
