
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_family {int list; int family; } ;


 int genl_unregister_family (int *) ;
 int list_del (int *) ;

int compat_genl_unregister_family(struct genl_family *family)
{
 int err;
 err = genl_unregister_family(&family->family);
 list_del(&family->list);
 return err;
}
