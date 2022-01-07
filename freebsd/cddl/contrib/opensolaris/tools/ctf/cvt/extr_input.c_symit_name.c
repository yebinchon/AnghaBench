
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* si_curname; } ;
typedef TYPE_1__ symit_data_t ;



char *
symit_name(symit_data_t *si)
{
 return (si->si_curname);
}
