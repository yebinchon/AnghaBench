
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ iif_newidx; TYPE_4__* iif_template; scalar_t__ iif_refmerge; int iif_ta; } ;
typedef TYPE_5__ iifind_data_t ;
struct TYPE_12__ {scalar_t__ ii_type; int ii_nargs; TYPE_3__** ii_args; int ii_owner; TYPE_1__* ii_dtype; int ii_name; } ;
typedef TYPE_6__ iidesc_t ;
struct TYPE_10__ {scalar_t__ ii_type; char* ii_name; char* ii_owner; int ii_nargs; TYPE_2__** ii_args; } ;
struct TYPE_9__ {scalar_t__ t_id; } ;
struct TYPE_8__ {int t_id; } ;
struct TYPE_7__ {scalar_t__ t_id; } ;
 int debug (int,char*,int,char*,char*) ;
 scalar_t__ get_mapping (int ,int ) ;
 int streq (int ,char*) ;

__attribute__((used)) static int
iidesc_match(void *data, void *arg)
{
 iidesc_t *node = data;
 iifind_data_t *iif = arg;
 int i;

 if (node->ii_type != iif->iif_template->ii_type ||
     !streq(node->ii_name, iif->iif_template->ii_name) ||
     node->ii_dtype->t_id != iif->iif_newidx)
  return (0);

 if ((node->ii_type == 129 || node->ii_type == 131) &&
     !streq(node->ii_owner, iif->iif_template->ii_owner))
  return (0);

 if (node->ii_nargs != iif->iif_template->ii_nargs)
  return (0);

 for (i = 0; i < node->ii_nargs; i++) {
  if (get_mapping(iif->iif_ta,
      iif->iif_template->ii_args[i]->t_id) !=
      node->ii_args[i]->t_id)
   return (0);
 }

 if (iif->iif_refmerge) {
  switch (iif->iif_template->ii_type) {
  case 135:
  case 131:
  case 134:
  case 129:
   debug(3, "suppressing duping of %d %s from %s\n",
       iif->iif_template->ii_type,
       iif->iif_template->ii_name,
       (iif->iif_template->ii_owner ?
       iif->iif_template->ii_owner : "NULL"));
   return (0);
  case 133:
  case 132:
  case 130:
  case 128:
   break;
  }
 }

 return (-1);
}
