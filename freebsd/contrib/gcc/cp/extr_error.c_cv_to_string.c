
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int padding; } ;


 int cxx_pp ;
 TYPE_1__* pp_base (int ) ;
 int pp_before ;
 int pp_cxx_cv_qualifier_seq (int ,int ) ;
 char const* pp_formatted_text (int ) ;
 int pp_none ;
 int reinit_cxx_pp () ;

__attribute__((used)) static const char *
cv_to_string (tree p, int v)
{
  reinit_cxx_pp ();
  pp_base (cxx_pp)->padding = v ? pp_before : pp_none;
  pp_cxx_cv_qualifier_seq (cxx_pp, p);
  return pp_formatted_text (cxx_pp);
}
