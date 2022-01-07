
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_fileid; } ;
typedef TYPE_1__ stateid_t ;



__attribute__((used)) static int is_delegation_stateid(stateid_t *stateid)
{
 return stateid->si_fileid == 0;
}
