
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aarp_entry {scalar_t__ xmit_count; struct aarp_entry* next; } ;


 int __aarp_expire (struct aarp_entry*) ;
 int __aarp_send_query (struct aarp_entry*) ;
 scalar_t__ sysctl_aarp_retransmit_limit ;

__attribute__((used)) static void __aarp_kick(struct aarp_entry **n)
{
 struct aarp_entry *t;

 while (*n)

  if ((*n)->xmit_count >= sysctl_aarp_retransmit_limit) {
   t = *n;
   *n = (*n)->next;
   __aarp_expire(t);
  } else {
   __aarp_send_query(*n);
   n = &((*n)->next);
  }
}
