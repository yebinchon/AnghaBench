
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ABS (int ) ;
 scalar_t__ C_plus_plus ;
 int NUL_ec ;
 int OUT_BEGIN_CODE () ;
 int OUT_END_CODE () ;
 char* _ (char*) ;
 int backing_name ;
 int * backing_up_file ;
 scalar_t__ backing_up_report ;
 int ccl2ecl () ;
 int cre8ecs (int ,int *,int) ;
 int csize ;
 scalar_t__ ddebug ;
 scalar_t__ do_stdinit ;
 scalar_t__ do_yylineno ;
 int do_yywrap ;
 int * ecgroup ;
 int flexend (int) ;
 int flexerror (char*) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ fullspd ;
 scalar_t__ fulltbl ;
 scalar_t__ getenv (char*) ;
 scalar_t__ interactive ;
 int lerrsf (char*,int ) ;
 scalar_t__ lex_compat ;
 int line_directive_out (int *,int) ;
 int nextecm ;
 int numecs ;
 int out_m4_define (char*,int *) ;
 int out_str (char*,scalar_t__) ;
 int outn (char*) ;
 int performance_report ;
 int pinpoint_message (char*) ;
 int posix_compat ;
 int real_reject ;
 scalar_t__ reentrant ;
 int reject ;
 int reject_really_used ;
 int stderr ;
 scalar_t__ syntaxerror ;
 scalar_t__ useecs ;
 scalar_t__ variable_trailing_context_rules ;
 scalar_t__ yyclass ;
 int yymore_really_used ;
 int yymore_used ;
 scalar_t__ yyparse () ;
 scalar_t__ yytext_is_array ;

void readin ()
{
 static char yy_stdinit[] = "FILE *yyin = stdin, *yyout = stdout;";
 static char yy_nostdinit[] =
  "FILE *yyin = (FILE *) 0, *yyout = (FILE *) 0;";

 line_directive_out ((FILE *) 0, 1);

 if (yyparse ()) {
  pinpoint_message (_("fatal parse error"));
  flexend (1);
 }

 if (syntaxerror)
  flexend (1);
 if (posix_compat) {





 }

 if (getenv ("POSIXLY_CORRECT")) {
  posix_compat = 1;
 }

 if (backing_up_report) {
  backing_up_file = fopen (backing_name, "w");
  if (backing_up_file == ((void*)0))
   lerrsf (_
    ("could not create backing-up info file %s"),
    backing_name);
 }

 else
  backing_up_file = ((void*)0);

 if (yymore_really_used == 1)
  yymore_used = 1;
 else if (yymore_really_used == 0)
  yymore_used = 0;

 if (reject_really_used == 1)
  reject = 1;
 else if (reject_really_used == 0)
  reject = 0;

 if (performance_report > 0) {
  if (lex_compat) {
   fprintf (stderr,
     _
     ("-l AT&T lex compatibility option entails a large performance penalty\n"));
   fprintf (stderr,
     _
     (" and may be the actual source of other reported performance penalties\n"));
  }

  else if (do_yylineno) {
   fprintf (stderr,
     _
     ("%%option yylineno entails a performance penalty ONLY on rules that can match newline characters\n"));
  }

  if (performance_report > 1) {
   if (interactive)
    fprintf (stderr,
      _
      ("-I (interactive) entails a minor performance penalty\n"));

   if (yymore_used)
    fprintf (stderr,
      _
      ("yymore() entails a minor performance penalty\n"));
  }

  if (reject)
   fprintf (stderr,
     _
     ("REJECT entails a large performance penalty\n"));

  if (variable_trailing_context_rules)
   fprintf (stderr,
     _
     ("Variable trailing context rules entail a large performance penalty\n"));
 }

 if (reject)
  real_reject = 1;

 if (variable_trailing_context_rules)
  reject = 1;

 if ((fulltbl || fullspd) && reject) {
  if (real_reject)
   flexerror (_
       ("REJECT cannot be used with -f or -F"));
  else if (do_yylineno)
   flexerror (_
       ("%option yylineno cannot be used with REJECT"));
  else
   flexerror (_
       ("variable trailing context rules cannot be used with -f or -F"));
 }

 if (reject){
        out_m4_define( "M4_YY_USES_REJECT", ((void*)0));

    }

 if (!do_yywrap) {
  if (!C_plus_plus) {
    if (reentrant)
    outn ("\n#define yywrap(yyscanner) 1");
    else
    outn ("\n#define yywrap() 1");
  }
  outn ("#define YY_SKIP_YYWRAP");
 }

 if (ddebug)
  outn ("\n#define FLEX_DEBUG");

 OUT_BEGIN_CODE ();
 if (csize == 256)
  outn ("typedef unsigned char YY_CHAR;");
 else
  outn ("typedef char YY_CHAR;");
 OUT_END_CODE ();

 if (C_plus_plus) {
  outn ("#define yytext_ptr yytext");

  if (interactive)
   outn ("#define YY_INTERACTIVE");
 }

 else {
  OUT_BEGIN_CODE ();

  if (do_stdinit) {
   if (reentrant){
                outn ("#ifdef VMS");
                outn ("#ifdef __VMS_POSIX");
                outn ("#define YY_STDINIT");
                outn ("#endif");
                outn ("#else");
                outn ("#define YY_STDINIT");
                outn ("#endif");
            }

   outn ("#ifdef VMS");
   outn ("#ifndef __VMS_POSIX");
   outn (yy_nostdinit);
   outn ("#else");
   outn (yy_stdinit);
   outn ("#endif");
   outn ("#else");
   outn (yy_stdinit);
   outn ("#endif");
  }

  else {
   if(!reentrant)
                outn (yy_nostdinit);
  }
  OUT_END_CODE ();
 }

 OUT_BEGIN_CODE ();
 if (fullspd)
  outn ("typedef yyconst struct yy_trans_info *yy_state_type;");
 else if (!C_plus_plus)
  outn ("typedef int yy_state_type;");
 OUT_END_CODE ();

 if (lex_compat)
  outn ("#define YY_FLEX_LEX_COMPAT");

 if (!C_plus_plus && !reentrant) {
  outn ("extern int yylineno;");
  OUT_BEGIN_CODE ();
  outn ("int yylineno = 1;");
  OUT_END_CODE ();
 }

 if (C_plus_plus) {
  outn ("\n#include <FlexLexer.h>");

   if (!do_yywrap) {
   outn("\nint yyFlexLexer::yywrap() { return 1; }");
  }

  if (yyclass) {
   outn ("int yyFlexLexer::yylex()");
   outn ("\t{");
   outn ("\tLexerError( \"yyFlexLexer::yylex invoked but %option yyclass used\" );");
   outn ("\treturn 0;");
   outn ("\t}");

   out_str ("\n#define YY_DECL int %s::yylex()\n",
     yyclass);
  }
 }

 else {




  if (yytext_is_array) {
   if (!reentrant)
    outn ("extern char yytext[];\n");
  }
  else {
   if (reentrant) {
    outn ("#define yytext_ptr yytext_r");
   }
   else {
    outn ("extern char *yytext;");
    outn ("#define yytext_ptr yytext");
   }
  }

  if (yyclass)
   flexerror (_
       ("%option yyclass only meaningful for C++ scanners"));
 }

 if (useecs)
  numecs = cre8ecs (nextecm, ecgroup, csize);
 else
  numecs = csize;


 ecgroup[0] = ecgroup[csize];
 NUL_ec = ABS (ecgroup[0]);

 if (useecs)
  ccl2ecl ();
}
