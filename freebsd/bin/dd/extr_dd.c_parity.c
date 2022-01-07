
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
parity(u_char c)
{
 int i;

 i = c ^ (c >> 1) ^ (c >> 2) ^ (c >> 3) ^
     (c >> 4) ^ (c >> 5) ^ (c >> 6) ^ (c >> 7);
 return (i & 1);
}
