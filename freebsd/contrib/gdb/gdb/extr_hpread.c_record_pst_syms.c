
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start; int end; } ;
typedef TYPE_1__ pst_syms_struct ;


 TYPE_1__* pst_syms_array ;
 int pst_syms_count ;
 int pst_syms_size ;
 scalar_t__ xrealloc (TYPE_1__*,int) ;

__attribute__((used)) static void
record_pst_syms (int start_sym, int end_sym)
{
  if (++pst_syms_count > pst_syms_size)
    {
      pst_syms_array = (pst_syms_struct *) xrealloc (pst_syms_array,
         2 * pst_syms_size * sizeof (pst_syms_struct));
      pst_syms_size *= 2;
    }
  pst_syms_array[pst_syms_count - 1].start = start_sym;
  pst_syms_array[pst_syms_count - 1].end = end_sym;
}
