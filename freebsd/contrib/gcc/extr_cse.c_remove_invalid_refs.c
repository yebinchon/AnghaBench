
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int exp; struct table_elt* next_same_hash; } ;
typedef int rtx ;


 unsigned int HASH_SIZE ;
 int REG_P (int ) ;
 scalar_t__ refers_to_regno_p (unsigned int,unsigned int,int ,int *) ;
 int remove_from_table (struct table_elt*,unsigned int) ;
 struct table_elt** table ;

__attribute__((used)) static void
remove_invalid_refs (unsigned int regno)
{
  unsigned int i;
  struct table_elt *p, *next;

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
 next = p->next_same_hash;
 if (!REG_P (p->exp)
     && refers_to_regno_p (regno, regno + 1, p->exp, (rtx *) 0))
   remove_from_table (p, i);
      }
}
