
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_fde {int dummy; } ;


 int get_cie (struct dwarf_fde const*) ;
 int get_cie_encoding (int ) ;

__attribute__((used)) static inline int
get_fde_encoding (const struct dwarf_fde *f)
{
  return get_cie_encoding (get_cie (f));
}
