
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fdt_strerror (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static void report_error(const char *where, int err)
{
 fprintf(stderr, "Error at '%s': %s\n", where, fdt_strerror(err));
}
