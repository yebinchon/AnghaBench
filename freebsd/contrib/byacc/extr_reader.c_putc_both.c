
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dflag ;
 int putc (int,int ) ;
 int text_file ;
 int union_file ;

__attribute__((used)) static void
putc_both(int c)
{
    putc(c, text_file);
    if (dflag)
 putc(c, union_file);
}
