
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfile ;
 int fprintf (int ,char*,char,char const*) ;

__attribute__((used)) static void
add(const char *p, const char *type)
{
 for (; *p; ++p) {
  char c = *p;
  switch (c) {
  case '\t': c = 't'; break;
  case '\n': c = 'n'; break;
  case '\'': c = '\''; break;
  case '\\': c = '\\'; break;

  default:
   fprintf(cfile, "\t[SYNBASE + '%c'] = %s,\n", c, type);
   continue;
  }
  fprintf(cfile, "\t[SYNBASE + '\\%c'] = %s,\n", c, type);
 }
}
