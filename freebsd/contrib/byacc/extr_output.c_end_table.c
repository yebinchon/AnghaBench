
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_line (char*) ;
 int output_newline () ;

__attribute__((used)) static void
end_table(void)
{
    output_newline();
    output_line("};");
}
