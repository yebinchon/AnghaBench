
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STREQ (char const*,char*) ;
 int XFREE (char*) ;
 int fprintf (int ,char*,char const*) ;
 int fputs (char*,int ) ;
 char* get_version_string () ;
 int stderr ;

__attribute__((used)) static int
gopt_print_version(const char *val)
{
  if (STREQ(val, "yes")) {
    char *vers = get_version_string();
    fputs(vers, stderr);
    XFREE(vers);
    return 0;
  } else if (STREQ(val, "no")) {
    return 0;
  }

  fprintf(stderr, "conf: unknown value to print_version \"%s\"\n", val);
  return 1;
}
