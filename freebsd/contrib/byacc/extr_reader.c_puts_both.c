
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dflag ;
 int fputs (char const*,int ) ;
 int text_file ;
 int union_file ;

__attribute__((used)) static void
puts_both(const char *s)
{
    fputs(s, text_file);
    if (dflag)
 fputs(s, union_file);
}
