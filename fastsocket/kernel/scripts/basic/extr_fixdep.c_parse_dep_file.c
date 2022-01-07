
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int clear_config () ;
 int do_config_file (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int isalnum (char) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,char*,...) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strrcmp (char*,char*) ;
 char* target ;

__attribute__((used)) static void parse_dep_file(void *map, size_t len)
{
 char *m = map;
 char *end = m + len;
 char *p;
 char s[PATH_MAX];

 p = strchr(m, ':');
 if (!p) {
  fprintf(stderr, "fixdep: parse error\n");
  exit(1);
 }
 memcpy(s, m, p-m); s[p-m] = 0;
 printf("deps_%s := \\\n", target);
 m = p+1;

 clear_config();

 while (m < end) {
  while (m < end && (*m == ' ' || *m == '\\' || *m == '\n'))
   m++;
  p = m;
  while (p < end && *p != ' ') p++;
  if (p == end) {
   do p--; while (!isalnum(*p));
   p++;
  }
  memcpy(s, m, p-m); s[p-m] = 0;
  if (strrcmp(s, "include/linux/autoconf.h") &&
      strrcmp(s, "arch/um/include/uml-config.h") &&
      strrcmp(s, ".ver")) {
   printf("  %s \\\n", s);
   do_config_file(s);
  }
  m = p + 1;
 }
 printf("\n%s: $(deps_%s)\n\n", target, target);
 printf("$(deps_%s):\n", target);
}
