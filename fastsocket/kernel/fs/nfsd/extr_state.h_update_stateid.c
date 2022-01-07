
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_generation; } ;
typedef TYPE_1__ stateid_t ;



__attribute__((used)) static inline void
update_stateid(stateid_t *stateid)
{
 stateid->si_generation++;
}
