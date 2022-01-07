
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
choose_hash(unsigned chashes)
{
 unsigned hash_id;

 for (hash_id = 6; hash_id >= 2; hash_id --) {
  if (((chashes >> hash_id) & 1) != 0) {
   return hash_id;
  }
 }



 return 0;
}
