
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int daddr; int saddr; int scope; } ;
struct TYPE_4__ {TYPE_1__ dn_u; } ;
struct flowi {int mark; int oif; int iif; TYPE_2__ nl_u; } ;



__attribute__((used)) static inline int compare_keys(struct flowi *fl1, struct flowi *fl2)
{
 return ((fl1->nl_u.dn_u.daddr ^ fl2->nl_u.dn_u.daddr) |
  (fl1->nl_u.dn_u.saddr ^ fl2->nl_u.dn_u.saddr) |
  (fl1->mark ^ fl2->mark) |
  (fl1->nl_u.dn_u.scope ^ fl2->nl_u.dn_u.scope) |
  (fl1->oif ^ fl2->oif) |
  (fl1->iif ^ fl2->iif)) == 0;
}
