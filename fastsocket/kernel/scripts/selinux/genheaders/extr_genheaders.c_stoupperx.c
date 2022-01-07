
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;
 char* strdup (char const*) ;
 char toupper (char) ;

__attribute__((used)) static char *stoupperx(const char *s)
{
 char *s2 = strdup(s);
 char *p;

 if (!s2) {
  fprintf(stderr, "%s:  out of memory\n", progname);
  exit(3);
 }

 for (p = s2; *p; p++)
  *p = toupper(*p);
 return s2;
}
