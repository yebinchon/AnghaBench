
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char const*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static
void
print_warning(const char *message)
{
    fprintf(stderr, "%s: WARNING: %s\n", progname, message);
}
