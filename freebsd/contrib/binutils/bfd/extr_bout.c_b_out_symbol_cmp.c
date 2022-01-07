
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ value; } ;
struct aout_symbol {int other; TYPE_4__ symbol; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_6__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_5__ {scalar_t__ vma; } ;


 scalar_t__ IS_BALNAME (int ) ;
 scalar_t__ IS_CALLNAME (int ) ;
 TYPE_2__* bfd_get_section (TYPE_4__*) ;

__attribute__((used)) static int
b_out_symbol_cmp (const void * a_ptr, const void * b_ptr)
{
  struct aout_symbol ** a = (struct aout_symbol **) a_ptr;
  struct aout_symbol ** b = (struct aout_symbol **) b_ptr;
  asection *sec;
  bfd_vma av, bv;


  sec = bfd_get_section (&(*a)->symbol);
  av = sec->output_section->vma + sec->output_offset + (*a)->symbol.value;
  sec = bfd_get_section (&(*b)->symbol);
  bv = sec->output_section->vma + sec->output_offset + (*b)->symbol.value;

  if (av < bv)
    return -1;
  if (av > bv)
    return 1;



  if (IS_BALNAME ((*a)->other) || IS_CALLNAME ((*b)->other))
    return -1;
  if (IS_CALLNAME ((*a)->other) || IS_BALNAME ((*b)->other))
    return 1;

  return 0;
}
