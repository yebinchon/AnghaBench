
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* fastmap; int* translate; int newline_anchor; int no_sub; scalar_t__ used; scalar_t__ allocated; scalar_t__ buffer; } ;
typedef TYPE_1__ regex_t ;
typedef int reg_syntax_t ;
typedef scalar_t__ reg_errcode_t ;
typedef int* RE_TRANSLATE_TYPE ;


 int BYTEWIDTH ;
 int CHAR_SET_SIZE ;
 scalar_t__ ISUPPER (int) ;
 int MB_CUR_MAX ;
 scalar_t__ REG_EPAREN ;
 scalar_t__ REG_ERPAREN ;
 scalar_t__ REG_ESPACE ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NEWLINE ;
 scalar_t__ REG_NOERROR ;
 int REG_NOSUB ;
 int RE_DOT_NEWLINE ;
 int RE_HAT_LISTS_NOT_NEWLINE ;
 int RE_SYNTAX_POSIX_BASIC ;
 int RE_SYNTAX_POSIX_EXTENDED ;
 int TOLOWER (int) ;
 scalar_t__ byte_regex_compile (char const*,int ,int ,TYPE_1__*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int re_compile_fastmap (TYPE_1__*) ;
 int strlen (char const*) ;
 scalar_t__ wcs_regex_compile (char const*,int ,int ,TYPE_1__*) ;

int
regcomp (regex_t *preg, const char *pattern, int cflags)
{
  reg_errcode_t ret;
  reg_syntax_t syntax
    = (cflags & REG_EXTENDED) ?
      RE_SYNTAX_POSIX_EXTENDED : RE_SYNTAX_POSIX_BASIC;


  preg->buffer = 0;
  preg->allocated = 0;
  preg->used = 0;


  preg->fastmap = (char *) malloc (1 << BYTEWIDTH);

  if (cflags & REG_ICASE)
    {
      int i;

      preg->translate
 = (RE_TRANSLATE_TYPE) malloc (CHAR_SET_SIZE
          * sizeof (*(RE_TRANSLATE_TYPE)0));
      if (preg->translate == ((void*)0))
        return (int) REG_ESPACE;


      for (i = 0; i < CHAR_SET_SIZE; i++)
        preg->translate[i] = ISUPPER (i) ? TOLOWER (i) : i;
    }
  else
    preg->translate = ((void*)0);


  if (cflags & REG_NEWLINE)
    {
      syntax &= ~RE_DOT_NEWLINE;
      syntax |= RE_HAT_LISTS_NOT_NEWLINE;

      preg->newline_anchor = 1;
    }
  else
    preg->newline_anchor = 0;

  preg->no_sub = !!(cflags & REG_NOSUB);
    ret = byte_regex_compile (pattern, strlen (pattern), syntax, preg);



  if (ret == REG_ERPAREN) ret = REG_EPAREN;

  if (ret == REG_NOERROR && preg->fastmap)
    {


      if (re_compile_fastmap (preg) == -2)
 {


   free (preg->fastmap);
   preg->fastmap = ((void*)0);
 }
    }

  return (int) ret;
}
