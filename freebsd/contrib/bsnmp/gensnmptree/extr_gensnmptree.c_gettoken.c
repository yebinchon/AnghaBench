
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 int gettoken_internal () ;
 int isprint (int) ;
 int stderr ;
 char* str ;
 int val ;

__attribute__((used)) static int
gettoken(void)
{
 int tok = gettoken_internal();

 if (debug) {
  switch (tok) {

    case 134:
   fprintf(stderr, "EOF ");
   break;

    case 131:
   fprintf(stderr, "NUM(%lu) ", val);
   break;

    case 130:
   fprintf(stderr, "STR(%s) ", str);
   break;

    case 138:
   fprintf(stderr, "ACCESS(%lu) ", val);
   break;

    case 129:
   fprintf(stderr, "TYPE(%lu) ", val);
   break;

    case 135:
   fprintf(stderr, "ENUM ");
   break;

    case 137:
   fprintf(stderr, "BITS ");
   break;

    case 128:
   fprintf(stderr, "TYPEDEF ");
   break;

    case 136:
   fprintf(stderr, "DEFTYPE(%s,%lu) ", str, val);
   break;

    case 132:
   fprintf(stderr, "INCLUDE ");
   break;

    case 133:
   fprintf(stderr, "FILENAME ");
   break;

    default:
   if (tok < 134) {
    if (isprint(tok))
     fprintf(stderr, "'%c' ", tok);
    else if (tok == '\n')
     fprintf(stderr, "\n");
    else
     fprintf(stderr, "%02x ", tok);
   } else
    abort();
   break;
  }
 }
 return (tok);
}
