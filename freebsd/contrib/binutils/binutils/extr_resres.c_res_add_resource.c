
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rc_uint_type ;
typedef int rc_res_resource ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ u; scalar_t__ named; } ;
typedef TYPE_2__ rc_res_id ;


 int res_append_resource (int *,int *,int,TYPE_2__*,int) ;
 int resources ;

__attribute__((used)) static void
res_add_resource (rc_res_resource *r, const rc_res_id *type, const rc_res_id *id,
    rc_uint_type language, int dupok)
{
  rc_res_id a[3];

  a[0] = *type;
  a[1] = *id;
  a[2].named = 0;
  a[2].u.id = language;
  res_append_resource (&resources, r, 3, a, dupok);
}
