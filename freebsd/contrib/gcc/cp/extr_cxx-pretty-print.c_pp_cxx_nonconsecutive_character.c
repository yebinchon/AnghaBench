
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cxx_pretty_printer ;
struct TYPE_2__ {int padding; } ;


 TYPE_1__* pp_base (int *) ;
 int pp_character (int *,int) ;
 int pp_cxx_whitespace (int *) ;
 char* pp_last_position_in_text (int *) ;
 int pp_none ;

__attribute__((used)) static inline void
pp_cxx_nonconsecutive_character (cxx_pretty_printer *pp, int c)
{
  const char *p = pp_last_position_in_text (pp);

  if (p != ((void*)0) && *p == c)
    pp_cxx_whitespace (pp);
  pp_character (pp, c);
  pp_base (pp)->padding = pp_none;
}
