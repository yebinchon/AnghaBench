
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ exp; int mode; struct table_elt* next_same_hash; } ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ exp_equiv_p (scalar_t__,scalar_t__,int ,int) ;
 struct table_elt** table ;

__attribute__((used)) static struct table_elt *
lookup_for_remove (rtx x, unsigned int hash, enum machine_mode mode)
{
  struct table_elt *p;

  if (REG_P (x))
    {
      unsigned int regno = REGNO (x);



      for (p = table[hash]; p; p = p->next_same_hash)
 if (REG_P (p->exp)
     && REGNO (p->exp) == regno)
   return p;
    }
  else
    {
      for (p = table[hash]; p; p = p->next_same_hash)
 if (mode == p->mode
     && (x == p->exp || exp_equiv_p (x, p->exp, 0, 0)))
   return p;
    }

  return 0;
}
