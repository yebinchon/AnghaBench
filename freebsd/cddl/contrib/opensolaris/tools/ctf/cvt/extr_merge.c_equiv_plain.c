
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_tdesc; } ;
typedef TYPE_1__ tdesc_t ;
typedef int equiv_data_t ;


 int equiv_node (int ,int ,int *) ;

__attribute__((used)) static int
equiv_plain(tdesc_t *stdp, tdesc_t *ttdp, equiv_data_t *ed)
{
 return (equiv_node(stdp->t_tdesc, ttdp->t_tdesc, ed));
}
