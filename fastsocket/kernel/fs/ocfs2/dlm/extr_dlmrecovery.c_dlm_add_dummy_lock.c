
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_migratable_lockres {int dummy; } ;
struct TYPE_2__ {int node; void* highest_blocked; void* convert_type; void* type; scalar_t__ cookie; } ;
struct dlm_lock {TYPE_1__ ml; int * lksb; } ;
struct dlm_ctxt {int node_num; } ;
typedef int dummy ;


 int DLM_BLOCKED_LIST ;
 void* LKM_IVMODE ;
 int dlm_add_lock_to_array (struct dlm_lock*,struct dlm_migratable_lockres*,int ) ;
 int memset (struct dlm_lock*,int ,int) ;

__attribute__((used)) static void dlm_add_dummy_lock(struct dlm_ctxt *dlm,
          struct dlm_migratable_lockres *mres)
{
 struct dlm_lock dummy;
 memset(&dummy, 0, sizeof(dummy));
 dummy.ml.cookie = 0;
 dummy.ml.type = LKM_IVMODE;
 dummy.ml.convert_type = LKM_IVMODE;
 dummy.ml.highest_blocked = LKM_IVMODE;
 dummy.lksb = ((void*)0);
 dummy.ml.node = dlm->node_num;
 dlm_add_lock_to_array(&dummy, mres, DLM_BLOCKED_LIST);
}
