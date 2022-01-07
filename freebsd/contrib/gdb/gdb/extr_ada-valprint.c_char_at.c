
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ extract_unsigned_integer (char*,int) ;

__attribute__((used)) static int
char_at (char *string, int i, int type_len)
{
  if (type_len == 1)
    return string[i];
  else
    return (int) extract_unsigned_integer (string + 2 * i, 2);
}
