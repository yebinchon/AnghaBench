
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* (* parse_operand ) (TYPE_1__*,int ,char const**,int *) ;} ;
typedef scalar_t__ CGEN_SYNTAX_CHAR_TYPE ;
typedef int CGEN_SYNTAX ;
typedef int CGEN_INSN ;
typedef int CGEN_FIELDS ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int CGEN_INIT_PARSE (TYPE_1__*) ;
 char* CGEN_INSN_MNEMONIC (int const*) ;
 int * CGEN_INSN_SYNTAX (int const*) ;
 int CGEN_SYNTAX_CHAR (scalar_t__ const) ;
 scalar_t__ CGEN_SYNTAX_CHAR_P (scalar_t__ const) ;
 int CGEN_SYNTAX_FIELD (scalar_t__ const) ;
 int CGEN_SYNTAX_MNEMONIC_P (scalar_t__ const) ;
 scalar_t__* CGEN_SYNTAX_STRING (int const*) ;
 scalar_t__ ISSPACE (char const) ;
 scalar_t__ TOLOWER (char const) ;
 char const* _ (char*) ;
 int abort () ;
 int cgen_init_parse_operand (TYPE_1__*) ;
 int sprintf (char*,char const*,int,...) ;
 char* stub1 (TYPE_1__*,int ,char const**,int *) ;

__attribute__((used)) static const char *
parse_insn_normal (CGEN_CPU_DESC cd,
     const CGEN_INSN *insn,
     const char **strp,
     CGEN_FIELDS *fields)
{

  const CGEN_SYNTAX *syntax = CGEN_INSN_SYNTAX (insn);
  const char *str = *strp;
  const char *errmsg;
  const char *p;
  const CGEN_SYNTAX_CHAR_TYPE * syn;
  p = CGEN_INSN_MNEMONIC (insn);
  while (*p && TOLOWER (*p) == TOLOWER (*str))
    ++p, ++str;

  if (* p)
    return _("unrecognized instruction");


  if (* str && ! ISSPACE (* str))
    return _("unrecognized instruction");


  CGEN_INIT_PARSE (cd);
  cgen_init_parse_operand (cd);






  syn = CGEN_SYNTAX_STRING (syntax);


  if (! CGEN_SYNTAX_MNEMONIC_P (* syn))
    abort ();

  ++syn;

  while (* syn != 0)
    {

      if (CGEN_SYNTAX_CHAR_P (* syn))
 {




   if (TOLOWER (*str) == TOLOWER (CGEN_SYNTAX_CHAR (* syn)))
     {




       ++ syn;
       ++ str;
     }
   else if (*str)
     {

       static char msg [80];


       sprintf (msg, _("syntax error (expected char `%c', found `%c')"),
         CGEN_SYNTAX_CHAR(*syn), *str);
       return msg;
     }
   else
     {

       static char msg [80];


       sprintf (msg, _("syntax error (expected char `%c', found end of instruction)"),
         CGEN_SYNTAX_CHAR(*syn));
       return msg;
     }
   continue;
 }


      errmsg = cd->parse_operand (cd, CGEN_SYNTAX_FIELD (*syn),
       &str, fields);
      if (errmsg)
 return errmsg;


      ++ syn;
    }


  if (* syn == 0)
    {




      while (ISSPACE (* str))
 ++ str;

      if (* str != '\0')
 return _("junk at end of line");

      return ((void*)0);
    }


  return _("unrecognized instruction");
}
