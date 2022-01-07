
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {char const* template; int code_number; int n_alternatives; int output_format; int lineno; } ;


 int INSN_OUTPUT_FORMAT_FUNCTION ;
 int INSN_OUTPUT_FORMAT_MULTI ;
 int INSN_OUTPUT_FORMAT_SINGLE ;
 scalar_t__ ISSPACE (char const) ;
 int IS_VSPACE (char const) ;
 int have_error ;
 int message_with_line (int ,char*) ;
 int print_rtx_ptr_loc (char const*) ;
 int printf (char*,...) ;
 int putchar (char const) ;
 int puts (char const*) ;

__attribute__((used)) static void
process_template (struct data *d, const char *template)
{
  const char *cp;
  int i;


  if (template[0] == '*')
    {
      d->template = 0;
      d->output_format = INSN_OUTPUT_FORMAT_FUNCTION;

      puts ("\nstatic const char *");
      printf ("output_%d (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)\n",
       d->code_number);
      puts ("{");
      print_rtx_ptr_loc (template);
      puts (template + 1);
      puts ("}");
    }



  else if (template[0] == '@')
    {
      d->template = 0;
      d->output_format = INSN_OUTPUT_FORMAT_MULTI;

      printf ("\nstatic const char * const output_%d[] = {\n", d->code_number);

      for (i = 0, cp = &template[1]; *cp; )
 {
   const char *ep, *sp;

   while (ISSPACE (*cp))
     cp++;

   printf ("  \"");

   for (ep = sp = cp; !IS_VSPACE (*ep) && *ep != '\0'; ++ep)
     if (!ISSPACE (*ep))
       sp = ep + 1;

   if (sp != ep)
     message_with_line (d->lineno,
          "trailing whitespace in output template");

   while (cp < sp)
     {
       putchar (*cp);
       cp++;
     }

   printf ("\",\n");
   i++;
 }
      if (i == 1)
 message_with_line (d->lineno,
      "'@' is redundant for output template with single alternative");
      if (i != d->n_alternatives)
 {
   message_with_line (d->lineno,
        "wrong number of alternatives in the output template");
   have_error = 1;
 }

      printf ("};\n");
    }
  else
    {
      d->template = template;
      d->output_format = INSN_OUTPUT_FORMAT_SINGLE;
    }
}
