
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIPBREAK ;
 int SKIPCONT ;
 int error (char*,char*) ;
 int evalskip ;
 int is_digit (char) ;
 long loopnest ;
 long skipcount ;
 long strtol (char*,char**,int) ;

int
breakcmd(int argc, char **argv)
{
 long n;
 char *end;

 if (argc > 1) {

  n = strtol(argv[1], &end, 10);
  if (!is_digit(argv[1][0]) || *end != '\0')
   error("Illegal number: %s", argv[1]);
 } else
  n = 1;
 if (n > loopnest)
  n = loopnest;
 if (n > 0) {
  evalskip = (**argv == 'c')? SKIPCONT : SKIPBREAK;
  skipcount = n;
 }
 return 0;
}
