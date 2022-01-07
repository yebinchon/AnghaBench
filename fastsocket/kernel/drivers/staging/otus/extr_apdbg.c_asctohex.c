
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex (char) ;

unsigned char asctohex(char *str)
{
    unsigned char value;

    value = hex(*str) & 0x0f;
    value = value << 4;
    str++;
    value |= hex(*str) & 0x0f;

    return value;
}
