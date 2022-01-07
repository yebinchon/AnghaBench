
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_multicast_group {int dummy; } ;
struct genl_family {int dummy; } ;


 int __genl_unregister_mc_group (struct genl_family*,struct genl_multicast_group*) ;
 int genl_lock () ;
 int genl_unlock () ;

void genl_unregister_mc_group(struct genl_family *family,
         struct genl_multicast_group *grp)
{
 genl_lock();
 __genl_unregister_mc_group(family, grp);
 genl_unlock();
}
