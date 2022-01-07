
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* StaticOrR ;
 int fprintf (int ,char*,char*,char*,char const*) ;
 int output_file ;
 int output_newline () ;
 char* symbol_prefix ;

__attribute__((used)) static void
start_str_table(const char *name)
{
    fprintf(output_file,
     "%sconst char *const %s%s[] = {",
     StaticOrR, symbol_prefix, name);
    output_newline();
}
