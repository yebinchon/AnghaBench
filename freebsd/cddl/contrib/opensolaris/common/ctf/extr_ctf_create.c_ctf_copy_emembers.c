
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint_t ;
typedef int uchar_t ;
struct TYPE_10__ {int cte_value; int cte_name; } ;
typedef TYPE_2__ ctf_enum_t ;
struct TYPE_12__ {int dmd_name; int dmd_value; } ;
struct TYPE_9__ {TYPE_4__ dtu_members; } ;
struct TYPE_11__ {TYPE_1__ dtd_u; } ;
typedef TYPE_3__ ctf_dtdef_t ;
typedef TYPE_4__ ctf_dmdef_t ;
typedef int cte ;


 int bcopy (TYPE_2__*,int *,int) ;
 TYPE_4__* ctf_list_next (TYPE_4__*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static uchar_t *
ctf_copy_emembers(ctf_dtdef_t *dtd, uint_t soff, uchar_t *t)
{
 ctf_dmdef_t *dmd = ctf_list_next(&dtd->dtd_u.dtu_members);
 ctf_enum_t cte;

 for (; dmd != ((void*)0); dmd = ctf_list_next(dmd)) {
  cte.cte_name = soff;
  cte.cte_value = dmd->dmd_value;
  soff += strlen(dmd->dmd_name) + 1;
  bcopy(&cte, t, sizeof (cte));
  t += sizeof (cte);
 }

 return (t);
}
