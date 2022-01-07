
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gentables ;
 int get_int32_decl () ;
 int num_rules ;
 int out (char*) ;
 int out_dec (char*,int) ;
 int out_str_dec (int ,char*,int) ;
 int outn (char*) ;
 scalar_t__* rule_has_nl ;

__attribute__((used)) static void geneoltbl (void)
{
 int i;

 outn ("m4_ifdef( [[M4_YY_USE_LINENO]],[[");
 outn ("/* Table of booleans, true if rule could match eol. */");
 out_str_dec (get_int32_decl (), "yy_rule_can_match_eol",
       num_rules + 1);

 if (gentables) {
  for (i = 1; i <= num_rules; i++) {
   out_dec ("%d, ", rule_has_nl[i] ? 1 : 0);

   if ((i % 20) == 19)
    out ("\n    ");
  }
  out ("    };\n");
 }
 outn ("]])");
}
