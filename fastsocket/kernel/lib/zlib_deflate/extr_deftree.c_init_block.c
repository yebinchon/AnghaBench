
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {long opt_len; long static_len; scalar_t__ matches; scalar_t__ last_lit; TYPE_3__* dyn_ltree; TYPE_2__* bl_tree; TYPE_1__* dyn_dtree; } ;
typedef TYPE_4__ deflate_state ;
struct TYPE_8__ {int Freq; } ;
struct TYPE_7__ {scalar_t__ Freq; } ;
struct TYPE_6__ {scalar_t__ Freq; } ;


 int BL_CODES ;
 int D_CODES ;
 size_t END_BLOCK ;
 int L_CODES ;

__attribute__((used)) static void init_block(
 deflate_state *s
)
{
    int n;


    for (n = 0; n < L_CODES; n++) s->dyn_ltree[n].Freq = 0;
    for (n = 0; n < D_CODES; n++) s->dyn_dtree[n].Freq = 0;
    for (n = 0; n < BL_CODES; n++) s->bl_tree[n].Freq = 0;

    s->dyn_ltree[END_BLOCK].Freq = 1;
    s->opt_len = s->static_len = 0L;
    s->last_lit = s->matches = 0;
}
