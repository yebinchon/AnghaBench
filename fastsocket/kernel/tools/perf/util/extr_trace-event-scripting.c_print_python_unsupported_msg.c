
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void print_python_unsupported_msg(void)
{
 fprintf(stderr, "Python scripting not supported."
  "  Install libpython and rebuild perf to enable it.\n"
  "For example:\n  # apt-get install python-dev (ubuntu)"
  "\n  # yum install python-devel (Fedora)"
  "\n  etc.\n");
}
