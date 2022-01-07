
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips16_constant_pool {scalar_t__ first; int highest_address; int insn_address; } ;
struct mips16_constant {int mode; int label; struct mips16_constant* next; int value; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_SIZE (int) ;
 int UNITS_PER_WORD ;
 int gen_label_rtx () ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static rtx
add_constant (struct mips16_constant_pool *pool,
       rtx value, enum machine_mode mode)
{
  struct mips16_constant **p, *c;
  bool first_of_size_p;







  first_of_size_p = 1;
  for (p = &pool->first; *p != 0; p = &(*p)->next)
    {
      if (mode == (*p)->mode && rtx_equal_p (value, (*p)->value))
 return (*p)->label;
      if (GET_MODE_SIZE (mode) < GET_MODE_SIZE ((*p)->mode))
 break;
      if (GET_MODE_SIZE (mode) == GET_MODE_SIZE ((*p)->mode))
 first_of_size_p = 0;
    }
  if (pool->first == 0)




    pool->highest_address = pool->insn_address - (UNITS_PER_WORD - 2) + 0x8000;
  pool->highest_address -= GET_MODE_SIZE (mode);
  if (first_of_size_p)

    pool->highest_address -= GET_MODE_SIZE (mode) - 1;


  c = (struct mips16_constant *) xmalloc (sizeof *c);
  c->value = value;
  c->mode = mode;
  c->label = gen_label_rtx ();
  c->next = *p;
  *p = c;

  return c->label;
}
