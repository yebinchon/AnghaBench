
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int exp; struct table_elt* next_same_hash; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int) ;
 unsigned int HASH_SIZE ;
 unsigned int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 unsigned int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 scalar_t__ refers_to_regno_p (unsigned int,unsigned int,int ,int *) ;
 int remove_from_table (struct table_elt*,unsigned int) ;
 struct table_elt** table ;

__attribute__((used)) static void
remove_invalid_subreg_refs (unsigned int regno, unsigned int offset,
       enum machine_mode mode)
{
  unsigned int i;
  struct table_elt *p, *next;
  unsigned int end = offset + (GET_MODE_SIZE (mode) - 1);

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
 rtx exp = p->exp;
 next = p->next_same_hash;

 if (!REG_P (exp)
     && (GET_CODE (exp) != SUBREG
  || !REG_P (SUBREG_REG (exp))
  || REGNO (SUBREG_REG (exp)) != regno
  || (((SUBREG_BYTE (exp)
        + (GET_MODE_SIZE (GET_MODE (exp)) - 1)) >= offset)
      && SUBREG_BYTE (exp) <= end))
     && refers_to_regno_p (regno, regno + 1, p->exp, (rtx *) 0))
   remove_from_table (p, i);
      }
}
