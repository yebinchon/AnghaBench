
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DICTHASH ;

__attribute__((used)) static int
dict_hash(char *k)
{
  u_int h;

  for (h = 0; *k; h += *k++) ;
  return h % DICTHASH;
}
