
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {unsigned int offset; struct die_info* next_ref; } ;


 unsigned int REF_HASH_SIZE ;
 struct die_info** die_ref_table ;

__attribute__((used)) static struct die_info *
follow_die_ref (unsigned int offset)
{
  struct die_info *die;
  int h;

  h = (offset % REF_HASH_SIZE);
  die = die_ref_table[h];
  while (die)
    {
      if (die->offset == offset)
 {
   return die;
 }
      die = die->next_ref;
    }
  return ((void*)0);
}
