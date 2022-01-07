
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int error (char*) ;
 int nargc ;
 int oexpr (int ) ;
 scalar_t__ parenlevel ;
 int setlocale (int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int syntax (char*,char*) ;
 int t_lex (char*) ;
 char** t_wp ;

int
main(int argc, char **argv)
{
 int res;
 char *p;

 if ((p = strrchr(argv[0], '/')) == ((void*)0))
  p = argv[0];
 else
  p++;
 if (strcmp(p, "[") == 0) {
  if (strcmp(argv[--argc], "]") != 0)
   error("missing ]");
  argv[argc] = ((void*)0);
 }


 if (--argc <= 0)
  return 1;


 (void)setlocale(LC_CTYPE, "");

 nargc = argc;
 t_wp = &argv[1];
 parenlevel = 0;
 if (nargc == 4 && strcmp(*t_wp, "!") == 0) {

  --nargc;
  ++t_wp;
  res = oexpr(t_lex(*t_wp));
 } else
  res = !oexpr(t_lex(*t_wp));

 if (--nargc > 0)
  syntax(*t_wp, "unexpected operator");

 return res;
}
