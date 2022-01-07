
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_fde {int CIE_delta; } ;
typedef void dwarf_cie ;



__attribute__((used)) static inline const struct dwarf_cie *
get_cie (const struct dwarf_fde *f)
{
  return (void *)&f->CIE_delta - f->CIE_delta;
}
