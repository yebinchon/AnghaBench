
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int int_nelems; } ;
typedef TYPE_1__ dt_inttab_t ;



uint_t
dt_inttab_size(const dt_inttab_t *ip)
{
 return (ip->int_nelems);
}
