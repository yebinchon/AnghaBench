
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int volume; int handle; } ;
struct rpc_audmgr_cb_func_ptr {TYPE_1__ u; int status; int set_to_one; } ;
struct audmgr {int handle; int wait; int state; } ;
 int STATE_DISABLED ;
 int STATE_ENABLED ;
 int STATE_ERROR ;
 int be32_to_cpu (int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void process_audmgr_callback(struct audmgr *am,
       struct rpc_audmgr_cb_func_ptr *args,
       int len)
{
 if (len < (sizeof(uint32_t) * 3))
  return;
 if (be32_to_cpu(args->set_to_one) != 1)
  return;

 switch (be32_to_cpu(args->status)) {
 case 130:
  if (len < sizeof(uint32_t) * 4)
   break;
  am->handle = be32_to_cpu(args->u.handle);
  pr_info("audmgr: rpc READY handle=0x%08x\n", am->handle);
  break;
 case 135: {
  uint32_t volume;
  if (len < sizeof(uint32_t) * 4)
   break;
  volume = be32_to_cpu(args->u.volume);
  pr_info("audmgr: rpc CODEC_CONFIG volume=0x%08x\n", volume);
  am->state = STATE_ENABLED;
  wake_up(&am->wait);
  break;
 }
 case 131:
  pr_err("audmgr: PENDING?\n");
  break;
 case 129:
  pr_err("audmgr: SUSPEND?\n");
  break;
 case 132:
  pr_err("audmgr: FAILURE\n");
  break;
 case 128:
  pr_err("audmgr: VOLUME_CHANGE?\n");
  break;
 case 134:
  pr_err("audmgr: DISABLED\n");
  am->state = STATE_DISABLED;
  wake_up(&am->wait);
  break;
 case 133:
  pr_err("audmgr: ERROR?\n");
  am->state = STATE_ERROR;
  wake_up(&am->wait);
  break;
 default:
  break;
 }
}
