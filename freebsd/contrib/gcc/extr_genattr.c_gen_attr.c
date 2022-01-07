
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 char TOUPPER (int ) ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int) ;
 int fputs (char*,int ) ;
 int printf (char*,char*,...) ;
 int putchar (char) ;
 int puts (char*) ;
 char* scan_comma_elt (char const**) ;
 int stdout ;
 int strcmp (char*,char*) ;
 int write_upcase (char*) ;

__attribute__((used)) static void
gen_attr (rtx attr)
{
  const char *p, *tag;
  int is_const = GET_CODE (XEXP (attr, 2)) == CONST;

  printf ("#define HAVE_ATTR_%s\n", XSTR (attr, 0));


  p = XSTR (attr, 1);
  if (*p == '\0')
    printf ("extern int get_attr_%s (%s);\n", XSTR (attr, 0),
     (is_const ? "void" : "rtx"));
  else
    {
      printf ("enum attr_%s {", XSTR (attr, 0));

      while ((tag = scan_comma_elt (&p)) != 0)
 {
   write_upcase (XSTR (attr, 0));
   putchar ('_');
   while (tag != p)
     putchar (TOUPPER (*tag++));
   if (*p == ',')
     fputs (", ", stdout);
 }

      fputs ("};\n", stdout);
      printf ("extern enum attr_%s get_attr_%s (%s);\n\n",
       XSTR (attr, 0), XSTR (attr, 0), (is_const ? "void" : "rtx"));
    }



  if (! strcmp (XSTR (attr, 0), "length"))
    {
      puts ("extern void shorten_branches (rtx);\nextern int insn_default_length (rtx);\nextern int insn_min_length (rtx);\nextern int insn_variable_length_p (rtx);\nextern int insn_current_length (rtx);\n\n#include \"insn-addr.h\"\n");






    }
}
