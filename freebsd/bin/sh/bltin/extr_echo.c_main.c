
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ equal (char*,char*) ;
 int putchar (char) ;

int
main(int argc, char *argv[])
{
 char **ap;
 char *p;
 char c;
 int count;
 int nflag = 0;

 int eflag = 0;


 ap = argv;
 if (argc)
  ap++;
 if ((p = *ap) != ((void*)0)) {
  if (equal(p, "-n")) {
   nflag++;
   ap++;
  } else if (equal(p, "-e")) {

   eflag++;

   ap++;
  }
 }
 while ((p = *ap++) != ((void*)0)) {
  while ((c = *p++) != '\0') {
   if (c == '\\' && eflag) {
    switch (*p++) {
    case 'a': c = '\a'; break;
    case 'b': c = '\b'; break;
    case 'c': return 0;
    case 'e': c = '\033'; break;
    case 'f': c = '\f'; break;
    case 'n': c = '\n'; break;
    case 'r': c = '\r'; break;
    case 't': c = '\t'; break;
    case 'v': c = '\v'; break;
    case '\\': break;
    case '0':
     c = 0;
     count = 3;
     while (--count >= 0 && (unsigned)(*p - '0') < 8)
      c = (c << 3) + (*p++ - '0');
     break;
    default:
     p--;
     break;
    }
   }
   putchar(c);
  }
  if (*ap)
   putchar(' ');
 }
 if (! nflag)
  putchar('\n');
 return 0;
}
