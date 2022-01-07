
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int count; char** args; } ;


 int errout ;
 char* expandstr (char const*) ;
 int flushout (int *) ;
 int out2 ;
 int out2c (char) ;
 int out2qstr (char const*) ;
 int out2str (char const*) ;
 int outbin (char const*,char const*,int ) ;
 char const* ps4val () ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void
xtracecommand(struct arglist *varlist, int argc, char **argv)
{
 char sep = 0;
 const char *text, *p, *ps4;
 int i;

 ps4 = expandstr(ps4val());
 out2str(ps4 != ((void*)0) ? ps4 : ps4val());
 for (i = 0; i < varlist->count; i++) {
  text = varlist->args[i];
  if (sep != 0)
   out2c(' ');
  p = strchr(text, '=');
  if (p != ((void*)0)) {
   p++;
   outbin(text, p - text, out2);
   out2qstr(p);
  } else
   out2qstr(text);
  sep = ' ';
 }
 for (i = 0; i < argc; i++) {
  text = argv[i];
  if (sep != 0)
   out2c(' ');
  out2qstr(text);
  sep = ' ';
 }
 out2c('\n');
 flushout(&errout);
}
