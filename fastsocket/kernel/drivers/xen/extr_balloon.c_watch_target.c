
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_watch {int dummy; } ;


 int PAGE_SHIFT ;
 int XBT_NIL ;
 int balloon_set_new_target (unsigned long long) ;
 int xenbus_scanf (int ,char*,char*,char*,unsigned long long*) ;

__attribute__((used)) static void watch_target(struct xenbus_watch *watch,
    const char **vec, unsigned int len)
{
 unsigned long long new_target;
 int err;

 err = xenbus_scanf(XBT_NIL, "memory", "target", "%llu", &new_target);
 if (err != 1) {

  return;
 }




 balloon_set_new_target(new_target >> (PAGE_SHIFT - 10));
}
