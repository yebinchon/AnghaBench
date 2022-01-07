
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cxx_pretty_printer ;


 int pp_cxx_nonconsecutive_character (int *,char) ;

void
pp_cxx_begin_template_argument_list (cxx_pretty_printer *pp)
{
  pp_cxx_nonconsecutive_character (pp, '<');
}
