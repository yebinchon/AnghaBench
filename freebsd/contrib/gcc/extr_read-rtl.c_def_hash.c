
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int hashval_t ;


 unsigned int CHAR_BIT ;

__attribute__((used)) static hashval_t
def_hash (const void *def)
{
  unsigned result, i;
  const char *string = *(const char *const *) def;

  for (result = i = 0; *string++ != '\0'; i++)
    result += ((unsigned char) *string << (i % CHAR_BIT));
  return result;
}
