
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UCH (char) ;
 scalar_t__ isspace (int ) ;

__attribute__((used)) static char *
after_blanks(char *s)
{
    while (*s != '\0' && isspace(UCH(*s)))
 ++s;
    return s;
}
