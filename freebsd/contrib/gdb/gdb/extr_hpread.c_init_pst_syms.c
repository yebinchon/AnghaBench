
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pst_syms_struct ;


 int * pst_syms_array ;
 scalar_t__ pst_syms_count ;
 int pst_syms_size ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
init_pst_syms (void)
{
  pst_syms_count = 0;
  pst_syms_size = 20;
  pst_syms_array = (pst_syms_struct *) xmalloc (20 * sizeof (pst_syms_struct));
}
