
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_FIELD_BITPOS (struct type*,int) ;

__attribute__((used)) static unsigned int
field_offset (struct type *type, int f)
{
  int n = TYPE_FIELD_BITPOS (type, f);

  if (n < 0)
    return (unsigned int) n & 0xffff;
  else
    return n;
}
