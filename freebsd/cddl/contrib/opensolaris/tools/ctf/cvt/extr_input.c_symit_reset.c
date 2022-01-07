
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_next; } ;
typedef TYPE_1__ symit_data_t ;



void
symit_reset(symit_data_t *si)
{
 si->si_next = 0;
}
