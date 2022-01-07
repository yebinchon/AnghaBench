
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* dh_name; } ;
typedef TYPE_1__ dt_idhash_t ;



const char *
dt_idhash_name(const dt_idhash_t *dhp)
{
 return (dhp->dh_name);
}
