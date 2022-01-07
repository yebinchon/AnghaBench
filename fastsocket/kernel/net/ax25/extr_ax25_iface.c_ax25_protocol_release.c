
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ax25_protocol {unsigned int pid; struct ax25_protocol* next; } ;


 struct ax25_protocol* protocol_list ;
 int protocol_list_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ax25_protocol_release(unsigned int pid)
{
 struct ax25_protocol *s, *protocol;

 write_lock_bh(&protocol_list_lock);
 protocol = protocol_list;
 if (protocol == ((void*)0))
  goto out;

 if (protocol->pid == pid) {
  protocol_list = protocol->next;
  goto out;
 }

 while (protocol != ((void*)0) && protocol->next != ((void*)0)) {
  if (protocol->next->pid == pid) {
   s = protocol->next;
   protocol->next = protocol->next->next;
   goto out;
  }

  protocol = protocol->next;
 }
out:
 write_unlock_bh(&protocol_list_lock);
}
