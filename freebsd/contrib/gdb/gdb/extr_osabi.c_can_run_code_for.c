
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_arch_info {struct bfd_arch_info const* (* compatible ) (struct bfd_arch_info const*,struct bfd_arch_info const*) ;} ;


 struct bfd_arch_info const* stub1 (struct bfd_arch_info const*,struct bfd_arch_info const*) ;

__attribute__((used)) static int
can_run_code_for (const struct bfd_arch_info *a, const struct bfd_arch_info *b)
{
  return (a == b || a->compatible (a, b) == a);
}
