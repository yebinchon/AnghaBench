
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
choose_hash(unsigned hh)
{
 static const int f[] = {
  130, 131, 129, 128,
  132, 133, -1
 };

 size_t u;

 for (u = 0; f[u] >= 0; u ++) {
  if (((hh >> f[u]) & 1) != 0) {
   return f[u];
  }
 }
 return -1;
}
