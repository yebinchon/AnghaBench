
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 int output_file ;
 int output_newline () ;

__attribute__((used)) static void
output_line(const char *value)
{
    fputs(value, output_file);
    output_newline();
}
