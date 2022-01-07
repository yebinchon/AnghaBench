
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int unichar ;
typedef void* rc_uint_type ;
struct TYPE_7__ {char* s; void* length; } ;
struct TYPE_6__ {int * s; void* length; } ;
struct TYPE_5__ {int dword; int val; } ;
struct TYPE_8__ {char* s; TYPE_3__ ss; TYPE_2__ suni; int * uni; TYPE_1__ i; } ;


 int BEG ;
 int BLOCK ;
 int BLOCKSTRINGFILEINFO ;
 int BLOCKVARFILEINFO ;
 int END ;
 int IGNORED_TOKEN ;
 int IGNORE_CPP (int) ;
 int ISIDNUM (int) ;
 int ISIDST (int) ;
 int NUMBER ;

 int QUOTEDUNISTRING ;

 int SIZEDUNISTRING ;

 int cpp_line () ;
 char* get_string (int ) ;
 char* handle_quotes (void**) ;
 int * handle_uniquotes (void**) ;
 int rc_lineno ;
 int rcdata_mode ;
 char rclex_peekch () ;
 int rclex_readch () ;
 int rclex_string () ;
 scalar_t__* rclex_tok ;
 int rclex_tok_add_char (int) ;
 scalar_t__ rclex_tok_pos ;
 int rclex_translatekeyword (scalar_t__*) ;
 int rcparse_warning (char*) ;
 int read_digit (int) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,scalar_t__*) ;
 int strlen (scalar_t__*) ;
 TYPE_4__ yylval ;

int
yylex (void)
{
  char *s;
  unichar *us;
  rc_uint_type length;
  int ch;


  if (! rclex_tok)
    rclex_tok_add_char (-1);

  do
    {
      do
 {

   rclex_tok_pos = 0;
   rclex_tok[0] = 0;

   if ((ch = rclex_readch ()) == -1)
     return -1;
   if (ch == '\n')
     ++rc_lineno;
 }
      while (ch <= 0x20);

      switch (ch)
 {
 case '#':
   while ((ch = rclex_peekch ()) != -1 && ch != '\n')
     rclex_readch ();
   cpp_line ();
   ch = IGNORED_TOKEN;
   break;

 case '{':
   ch = IGNORE_CPP (BEG);
   break;

 case '}':
   ch = IGNORE_CPP (END);
   break;

 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
   yylval.i.val = read_digit (ch);
   yylval.i.dword = 0;
   switch (rclex_peekch ())
     {
     case 'l': case 'L':
       rclex_readch ();
       yylval.i.dword = 1;
       break;
     }
   ch = IGNORE_CPP (NUMBER);
   break;
 case '"':
   rclex_string ();
   ch = IGNORE_CPP ((! rcdata_mode ? 130 : 129));
   if (ch == IGNORED_TOKEN)
     break;
   s = handle_quotes (&length);
   if (! rcdata_mode)
     yylval.s = s;
   else
     {
       yylval.ss.length = length;
       yylval.ss.s = s;
   }
   break;
 case 'L': case 'l':
   if (rclex_peekch () == '"')
     {
       rclex_readch ();
       rclex_string ();
       ch = IGNORE_CPP ((! rcdata_mode ? QUOTEDUNISTRING : SIZEDUNISTRING));
       if (ch == IGNORED_TOKEN)
  break;
       us = handle_uniquotes (&length);
       if (! rcdata_mode)
  yylval.uni = us;
       else
         {
    yylval.suni.length = length;
    yylval.suni.s = us;
       }
       break;
     }

 default:
   if (ISIDST (ch) || ch=='$')
     {
       while ((ch = rclex_peekch ()) != -1 && (ISIDNUM (ch) || ch == '$' || ch == '.'))
  rclex_readch ();
       ch = IGNORE_CPP (rclex_translatekeyword (rclex_tok));
       if (ch == 128)
  {
    s = get_string (strlen (rclex_tok) + 1);
    strcpy (s, rclex_tok);
    yylval.s = s;
  }
       else if (ch == BLOCK)
  {
    const char *hs = ((void*)0);

    switch (yylex ())
    {
    case 128:
    case 130:
      hs = yylval.s;
      break;
    case 129:
      hs = yylval.s = yylval.ss.s;
      break;
    }
    if (! hs)
      {
        rcparse_warning ("BLOCK expects a string as argument.");
        ch = IGNORED_TOKEN;
      }
    else if (! strcmp (hs, "StringFileInfo"))
      ch = BLOCKSTRINGFILEINFO;
    else if (! strcmp (hs, "VarFileInfo"))
      ch = BLOCKVARFILEINFO;
  }
       break;
     }
   ch = IGNORE_CPP (ch);
   break;
 }
    }
  while (ch == IGNORED_TOKEN);

  return ch;
}
