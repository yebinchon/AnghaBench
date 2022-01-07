
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char tohex(char hexdigit)
{
 return hexdigit > 9 ? hexdigit + 'a' - 10 : hexdigit + '0';
}
