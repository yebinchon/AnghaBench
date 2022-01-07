
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sjlj_lp_info {int action_index; int call_site_index; int dispatch_index; scalar_t__ directly_reachable; } ;
struct eh_region {int landing_pad; } ;
typedef int rtx ;
typedef int htab_t ;
struct TYPE_4__ {int uses_eh_lsda; TYPE_1__* eh; } ;
struct TYPE_3__ {int last_region_number; int region_array; int action_record_data; } ;


 int GEN_INT (int ) ;
 int VARRAY_UCHAR_INIT (int ,int,char*) ;
 struct eh_region* VEC_index (int ,int ,int) ;
 int action_record_eq ;
 int action_record_hash ;
 int add_call_site (int ,int) ;
 int call_site_base ;
 TYPE_2__* cfun ;
 int collect_one_action_chain (int ,struct eh_region*) ;
 int eh_region ;
 int free ;
 int htab_create (int,int ,int ,int ) ;
 int htab_delete (int ) ;

__attribute__((used)) static void
sjlj_assign_call_site_values (rtx dispatch_label, struct sjlj_lp_info *lp_info)
{
  htab_t ar_hash;
  int i, index;



  VARRAY_UCHAR_INIT (cfun->eh->action_record_data, 64, "action_record_data");
  ar_hash = htab_create (31, action_record_hash, action_record_eq, free);

  for (i = cfun->eh->last_region_number; i > 0; --i)
    if (lp_info[i].directly_reachable)
      {
 struct eh_region *r = VEC_index (eh_region, cfun->eh->region_array, i);

 r->landing_pad = dispatch_label;
 lp_info[i].action_index = collect_one_action_chain (ar_hash, r);
 if (lp_info[i].action_index != -1)
   cfun->uses_eh_lsda = 1;
      }

  htab_delete (ar_hash);
  index = 0;
  for (i = cfun->eh->last_region_number; i > 0; --i)
    if (lp_info[i].directly_reachable)
      lp_info[i].dispatch_index = index++;





  call_site_base = 1;
  for (i = cfun->eh->last_region_number; i > 0; --i)
    if (lp_info[i].directly_reachable)
      {
 int action = lp_info[i].action_index;


 if (action == -2)
   index = 0;

 else if (action == -1)
   index = -1;

 else
   index = add_call_site (GEN_INT (lp_info[i].dispatch_index), action);

 lp_info[i].call_site_index = index;
      }
}
