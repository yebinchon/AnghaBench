
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YYSTYPE ;



int
yylex(YYSTYPE *value)
{
    return value ? 0 : -1;
}
