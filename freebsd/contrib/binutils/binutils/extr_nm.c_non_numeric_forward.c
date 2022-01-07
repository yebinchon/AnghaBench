
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asymbol ;


 char* bfd_asymbol_name (int *) ;
 int bfd_fatal (int ) ;
 int bfd_get_filename (int ) ;
 int * bfd_minisymbol_to_symbol (int ,int ,void const*,int ) ;
 int sort_bfd ;
 int sort_dynamic ;
 int sort_x ;
 int sort_y ;
 int strcmp (char const*,char const*) ;
 int strcoll (char const*,char const*) ;

__attribute__((used)) static int
non_numeric_forward (const void *P_x, const void *P_y)
{
  asymbol *x, *y;
  const char *xn, *yn;

  x = bfd_minisymbol_to_symbol (sort_bfd, sort_dynamic, P_x, sort_x);
  y = bfd_minisymbol_to_symbol (sort_bfd, sort_dynamic, P_y, sort_y);
  if (x == ((void*)0) || y == ((void*)0))
    bfd_fatal (bfd_get_filename (sort_bfd));

  xn = bfd_asymbol_name (x);
  yn = bfd_asymbol_name (y);

  if (yn == ((void*)0))
    return xn != ((void*)0);
  if (xn == ((void*)0))
    return -1;
  return strcmp (xn, yn);

}
