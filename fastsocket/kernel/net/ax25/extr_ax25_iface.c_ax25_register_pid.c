
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ax25_protocol {struct ax25_protocol* next; } ;


 struct ax25_protocol* protocol_list ;
 int protocol_list_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ax25_register_pid(struct ax25_protocol *ap)
{
 write_lock_bh(&protocol_list_lock);
 ap->next = protocol_list;
 protocol_list = ap;
 write_unlock_bh(&protocol_list_lock);
}
