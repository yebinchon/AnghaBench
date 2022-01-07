
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {struct die_info* next_ref; } ;


 unsigned int REF_HASH_SIZE ;
 struct die_info** die_ref_table ;

__attribute__((used)) static void
store_in_ref_table (unsigned int offset, struct die_info *die)
{
  int h;
  struct die_info *old;

  h = (offset % REF_HASH_SIZE);
  old = die_ref_table[h];
  die->next_ref = old;
  die_ref_table[h] = die;
}
