
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int ieee_class_method_var (struct ieee_handle*,char const*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
ieee_class_method_variant (void *p, const char *physname,
      enum debug_visibility visibility,
      bfd_boolean constp, bfd_boolean volatilep,
      bfd_vma voffset, bfd_boolean context)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  return ieee_class_method_var (info, physname, visibility, FALSE, constp,
    volatilep, voffset, context);
}
