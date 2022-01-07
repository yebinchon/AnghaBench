
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int dummy; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int stab_class_method_var (struct stab_write_handle*,char const*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
stab_class_method_variant (void *p, const char *physname,
      enum debug_visibility visibility,
      bfd_boolean constp, bfd_boolean volatilep,
      bfd_vma voffset, bfd_boolean contextp)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;

  return stab_class_method_var (info, physname, visibility, FALSE, constp,
    volatilep, voffset, contextp);
}
