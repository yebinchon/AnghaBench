
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ax25_protocol {unsigned int pid; struct ax25_protocol* next; } ;


 struct ax25_protocol* protocol_list ;
 int protocol_list_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int ax25_protocol_is_registered(unsigned int pid)
{
 struct ax25_protocol *protocol;
 int res = 0;

 read_lock_bh(&protocol_list_lock);
 for (protocol = protocol_list; protocol != ((void*)0); protocol = protocol->next)
  if (protocol->pid == pid) {
   res = 1;
   break;
  }
 read_unlock_bh(&protocol_list_lock);

 return res;
}
