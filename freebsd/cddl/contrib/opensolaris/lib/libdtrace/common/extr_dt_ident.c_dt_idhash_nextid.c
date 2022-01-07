
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_3__ {scalar_t__ dh_nextid; scalar_t__ dh_maxid; } ;
typedef TYPE_1__ dt_idhash_t ;



int
dt_idhash_nextid(dt_idhash_t *dhp, uint_t *p)
{
 if (dhp->dh_nextid >= dhp->dh_maxid)
  return (-1);

 *p = dhp->dh_nextid++;
 return (0);
}
