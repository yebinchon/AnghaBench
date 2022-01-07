
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int ;


 char NKVHASH ;

__attribute__((used)) static u_int
kvhash_of(char *key)
{
  u_int i, j;

  for (i = 0; (j = *key++); i += j) ;

  return i % NKVHASH;
}
