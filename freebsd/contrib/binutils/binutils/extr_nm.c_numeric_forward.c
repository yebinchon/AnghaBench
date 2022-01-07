
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asymbol ;
typedef int asection ;


 int bfd_fatal (int ) ;
 int bfd_get_filename (int ) ;
 int * bfd_get_section (int *) ;
 scalar_t__ bfd_is_und_section (int *) ;
 int * bfd_minisymbol_to_symbol (int ,int ,void const*,int ) ;
 int non_numeric_forward (void const*,void const*) ;
 int sort_bfd ;
 int sort_dynamic ;
 int sort_x ;
 int sort_y ;
 scalar_t__ valueof (int *) ;

__attribute__((used)) static int
numeric_forward (const void *P_x, const void *P_y)
{
  asymbol *x, *y;
  asection *xs, *ys;

  x = bfd_minisymbol_to_symbol (sort_bfd, sort_dynamic, P_x, sort_x);
  y = bfd_minisymbol_to_symbol (sort_bfd, sort_dynamic, P_y, sort_y);
  if (x == ((void*)0) || y == ((void*)0))
    bfd_fatal (bfd_get_filename (sort_bfd));

  xs = bfd_get_section (x);
  ys = bfd_get_section (y);

  if (bfd_is_und_section (xs))
    {
      if (! bfd_is_und_section (ys))
 return -1;
    }
  else if (bfd_is_und_section (ys))
    return 1;
  else if (valueof (x) != valueof (y))
    return valueof (x) < valueof (y) ? -1 : 1;

  return non_numeric_forward (P_x, P_y);
}
