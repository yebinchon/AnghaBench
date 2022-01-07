
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_prefix {int dummy; } ;


 int IS_ABSOLUTE_PATH (char const*) ;
 int add_prefix (struct path_prefix*,char const*,char const*,int,int,int) ;
 char* concat (scalar_t__,char const*,int *) ;
 int fatal (char*,char const*) ;
 scalar_t__ target_sysroot_suffix ;
 scalar_t__ target_system_root ;

__attribute__((used)) static void
add_sysrooted_prefix (struct path_prefix *pprefix, const char *prefix,
        const char *component,
                                   int priority,
        int require_machine_suffix, int os_multilib)
{
  if (!IS_ABSOLUTE_PATH (prefix))
    fatal ("system path '%s' is not absolute", prefix);

  if (target_system_root)
    {
      if (target_sysroot_suffix)
   prefix = concat (target_sysroot_suffix, prefix, ((void*)0));
      prefix = concat (target_system_root, prefix, ((void*)0));



      component = "GCC";
    }

  add_prefix (pprefix, prefix, component, priority,
       require_machine_suffix, os_multilib);
}
