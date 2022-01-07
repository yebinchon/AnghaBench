
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 scalar_t__ isxdigit (char) ;
 char tolower (char) ;

char hex(char v)
{
    if(isdigit(v))
        return v - '0';
    else if(isxdigit(v))
        return (tolower(v) - 'a' + 10);
    else
        return 0;
}
