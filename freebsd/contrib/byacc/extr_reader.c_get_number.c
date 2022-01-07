
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Value_t ;


 int* cptr ;
 scalar_t__ isdigit (int) ;

__attribute__((used)) static Value_t
get_number(void)
{
    int c;
    Value_t n;

    n = 0;
    for (c = *cptr; isdigit(c); c = *++cptr)
 n = (Value_t)(10 * n + (c - '0'));

    return (n);
}
