
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outline ;
 int output_file ;
 int putc (char,int ) ;
 int rflag ;

__attribute__((used)) static void
output_newline(void)
{
    if (!rflag)
 ++outline;
    putc('\n', output_file);
}
