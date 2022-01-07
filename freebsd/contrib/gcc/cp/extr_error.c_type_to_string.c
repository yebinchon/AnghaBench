
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TFF_CLASS_KEY_OR_ENUM ;
 int TFF_TEMPLATE_HEADER ;
 int cxx_pp ;
 int dump_type (int ,int) ;
 char const* pp_formatted_text (int ) ;
 int reinit_cxx_pp () ;

__attribute__((used)) static const char *
type_to_string (tree typ, int verbose)
{
  int flags = 0;
  if (verbose)
    flags |= TFF_CLASS_KEY_OR_ENUM;
  flags |= TFF_TEMPLATE_HEADER;

  reinit_cxx_pp ();
  dump_type (typ, flags);
  return pp_formatted_text (cxx_pp);
}
