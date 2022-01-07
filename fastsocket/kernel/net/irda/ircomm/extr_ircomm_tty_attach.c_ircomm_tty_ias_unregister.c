
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ircomm_tty_cb {int * ckey; int * obj; } ;


 int irias_delete_object (int *) ;
 int irlmp_unregister_client (int *) ;

__attribute__((used)) static void ircomm_tty_ias_unregister(struct ircomm_tty_cb *self)
{
 if (self->obj) {
  irias_delete_object(self->obj);
  self->obj = ((void*)0);
 }
}
