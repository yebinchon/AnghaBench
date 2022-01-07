
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 char* _ (char*) ;
 int eofseen ;
 int flexscan () ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int isascii (int) ;
 int isprint (int) ;
 char* nmstr ;
 int num_rules ;
 int putc (int,int ) ;
 int sectnum ;
 int stderr ;
 int synerr (char*) ;
 scalar_t__ trace ;
 int yylval ;

int yylex ()
{
 int toktype;
 static int beglin = 0;
 extern char *yytext;

 if (eofseen)
  toktype = EOF;
 else
  toktype = flexscan ();

 if (toktype == EOF || toktype == 0) {
  eofseen = 1;

  if (sectnum == 1) {
   synerr (_("premature EOF"));
   sectnum = 2;
   toktype = 129;
  }

  else
   toktype = 0;
 }

 if (trace) {
  if (beglin) {
   fprintf (stderr, "%d\t", num_rules + 1);
   beglin = 0;
  }

  switch (toktype) {
  case '<':
  case '>':
  case '^':
  case '$':
  case '"':
  case '[':
  case ']':
  case '{':
  case '}':
  case '|':
  case '(':
  case ')':
  case '-':
  case '/':
  case '\\':
  case '?':
  case '.':
  case '*':
  case '+':
  case ',':
   (void) putc (toktype, stderr);
   break;

  case '\n':
   (void) putc ('\n', stderr);

   if (sectnum == 2)
    beglin = 1;

   break;

  case 130:
   fputs ("%s", stderr);
   break;

  case 128:
   fputs ("%x", stderr);
   break;

  case 129:
   fputs ("%%\n", stderr);





   if (sectnum == 2)
    beglin = 1;

   break;

  case 136:
   fprintf (stderr, "'%s'", nmstr);
   break;

  case 138:
   switch (yylval) {
   case '<':
   case '>':
   case '^':
   case '$':
   case '"':
   case '[':
   case ']':
   case '{':
   case '}':
   case '|':
   case '(':
   case ')':
   case '-':
   case '/':
   case '\\':
   case '?':
   case '.':
   case '*':
   case '+':
   case ',':
    fprintf (stderr, "\\%c", yylval);
    break;

   default:
    if (!isascii (yylval) || !isprint (yylval))
     fprintf (stderr,
       "\\%.3o",
       (unsigned int) yylval);
    else
     (void) putc (yylval, stderr);
    break;
   }

   break;

  case 135:
   fprintf (stderr, "%d", yylval);
   break;

  case 131:
   fprintf (stderr, "[%d]", yylval);
   break;

  case 137:
   fprintf (stderr, "<<EOF>>");
   break;

  case 134:
   fprintf (stderr, "%s ", yytext);
   break;

  case 133:
  case 132:
  case 150:
  case 149:
  case 148:
  case 147:
  case 146:
  case 145:
  case 144:
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
   fprintf (stderr, "%s", yytext);
   break;

  case 0:
   fprintf (stderr, _("End Marker\n"));
   break;

  default:
   fprintf (stderr,
     _
     ("*Something Weird* - tok: %d val: %d\n"),
     toktype, yylval);
   break;
  }
 }

 return toktype;
}
