
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UCH (char) ;
 scalar_t__ isalnum (int ) ;

__attribute__((used)) static int
skip_keyword(char *str, int n)
{
    while (isalnum(UCH(str[n])) && str[n] != '\0')
 n++;
    return n;
}
