
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uts_namespace {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long CLONE_NEWUTS ;
 struct uts_namespace* clone_uts_ns (struct uts_namespace*) ;
 int get_uts_ns (struct uts_namespace*) ;
 int put_uts_ns (struct uts_namespace*) ;

struct uts_namespace *copy_utsname(unsigned long flags, struct uts_namespace *old_ns)
{
 struct uts_namespace *new_ns;

 BUG_ON(!old_ns);
 get_uts_ns(old_ns);

 if (!(flags & CLONE_NEWUTS))
  return old_ns;

 new_ns = clone_uts_ns(old_ns);

 put_uts_ns(old_ns);
 return new_ns;
}
