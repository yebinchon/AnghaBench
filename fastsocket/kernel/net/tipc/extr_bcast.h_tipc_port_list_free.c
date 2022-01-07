
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_list {struct port_list* next; } ;


 int kfree (struct port_list*) ;

__attribute__((used)) static inline void tipc_port_list_free(struct port_list *pl_ptr)
{
 struct port_list *item;
 struct port_list *next;

 for (item = pl_ptr->next; item; item = next) {
  next = item->next;
  kfree(item);
 }
}
