
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_exts {int * action; } ;


 int TCA_ACT_UNBIND ;
 int tcf_action_destroy (int *,int ) ;

void tcf_exts_destroy(struct tcf_proto *tp, struct tcf_exts *exts)
{






}
