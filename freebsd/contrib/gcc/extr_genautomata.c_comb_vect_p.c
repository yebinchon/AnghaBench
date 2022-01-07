
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* state_ainsn_table_t ;
struct TYPE_3__ {int comb_vect; int full_vect; } ;


 int VEC_length (int ,int ) ;
 int vect_el_t ;

__attribute__((used)) static int
comb_vect_p (state_ainsn_table_t tab)
{
  return (2 * VEC_length (vect_el_t, tab->full_vect)
           > 5 * VEC_length (vect_el_t, tab->comb_vect));
}
