
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int snd_aw2_saa7146_get_limit(int size)
{
 int limitsize = 32;
 int limit = 0;
 while (limitsize < size) {
  limitsize *= 2;
  limit++;
 }
 return limit;
}
