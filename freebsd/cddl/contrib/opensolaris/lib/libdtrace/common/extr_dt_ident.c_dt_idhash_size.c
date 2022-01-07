
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_3__ {int dh_nelems; } ;
typedef TYPE_1__ dt_idhash_t ;



ulong_t
dt_idhash_size(const dt_idhash_t *dhp)
{
 return (dhp->dh_nelems);
}
