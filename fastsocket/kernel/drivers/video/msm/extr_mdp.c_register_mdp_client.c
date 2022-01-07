
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_interface {scalar_t__ class; } ;


 int ENODEV ;
 int class_interface_register (struct class_interface*) ;
 scalar_t__ mdp_class ;
 int pr_err (char*) ;

int register_mdp_client(struct class_interface *cint)
{
 if (!mdp_class) {
  pr_err("mdp: no mdp_class when registering mdp client\n");
  return -ENODEV;
 }
 cint->class = mdp_class;
 return class_interface_register(cint);
}
