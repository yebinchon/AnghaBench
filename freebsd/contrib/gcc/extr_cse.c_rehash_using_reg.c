
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {struct table_elt* prev_same_hash; struct table_elt* next_same_hash; int mode; int exp; } ;
typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 unsigned int HASH_SIZE ;
 int REGNO (int ) ;
 scalar_t__ REG_IN_TABLE (int ) ;
 int REG_P (int ) ;
 scalar_t__ REG_TICK (int ) ;
 unsigned int SAFE_HASH (int ,int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ exp_equiv_p (int ,int ,int,int) ;
 scalar_t__ reg_mentioned_p (int ,int ) ;
 struct table_elt** table ;

__attribute__((used)) static void
rehash_using_reg (rtx x)
{
  unsigned int i;
  struct table_elt *p, *next;
  unsigned hash;

  if (GET_CODE (x) == SUBREG)
    x = SUBREG_REG (x);




  if (!REG_P (x)
      || REG_IN_TABLE (REGNO (x)) < 0
      || REG_IN_TABLE (REGNO (x)) != REG_TICK (REGNO (x)))
    return;




  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
 next = p->next_same_hash;
 if (reg_mentioned_p (x, p->exp)
     && exp_equiv_p (p->exp, p->exp, 1, 0)
     && i != (hash = SAFE_HASH (p->exp, p->mode)))
   {
     if (p->next_same_hash)
       p->next_same_hash->prev_same_hash = p->prev_same_hash;

     if (p->prev_same_hash)
       p->prev_same_hash->next_same_hash = p->next_same_hash;
     else
       table[i] = p->next_same_hash;

     p->next_same_hash = table[hash];
     p->prev_same_hash = 0;
     if (table[hash])
       table[hash]->prev_same_hash = p;
     table[hash] = p;
   }
      }
}
