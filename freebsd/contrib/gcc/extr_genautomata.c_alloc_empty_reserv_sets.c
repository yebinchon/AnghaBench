
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set_el_t ;
typedef scalar_t__ reserv_sets_t ;


 int els_in_reservs ;
 int irp ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ obstack_base (int *) ;
 int obstack_blank (int *,int) ;
 int obstack_finish (int *) ;

__attribute__((used)) static reserv_sets_t
alloc_empty_reserv_sets (void)
{
  reserv_sets_t result;

  obstack_blank (&irp, els_in_reservs * sizeof (set_el_t));
  result = (reserv_sets_t) obstack_base (&irp);
  (void) obstack_finish (&irp);
  memset (result, 0, els_in_reservs * sizeof (set_el_t));
  return result;
}
