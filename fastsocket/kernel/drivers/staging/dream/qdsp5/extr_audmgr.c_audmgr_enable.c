
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* client_data; void* cb_func; void* snd_method; void* codec_type; void* def_method; void* rx_sample_rate; void* tx_sample_rate; void* set_to_one; } ;
struct audmgr_enable_msg {int hdr; TYPE_1__ args; } ;
struct audmgr_config {int tx_rate; int rx_rate; int def_method; int codec; int snd_method; } ;
struct audmgr {scalar_t__ state; int wait; int ept; } ;
typedef int msg ;


 int AUDMGR_ENABLE_CLIENT ;
 int AUDMGR_PROG ;
 int BUG () ;
 int ENODEV ;
 int HZ ;
 scalar_t__ STATE_DISABLING ;
 scalar_t__ STATE_ENABLED ;
 scalar_t__ STATE_ENABLING ;
 void* cpu_to_be32 (int) ;
 int msm_rpc_get_vers (int ) ;
 int msm_rpc_setup_req (int *,int ,int ,int ) ;
 int msm_rpc_write (int ,struct audmgr_enable_msg*,int) ;
 int pr_err (char*,...) ;
 int wait_event_timeout (int ,int,int) ;

int audmgr_enable(struct audmgr *am, struct audmgr_config *cfg)
{
 struct audmgr_enable_msg msg;
 int rc;

 if (am->state == STATE_ENABLED)
  return 0;

 if (am->state == STATE_DISABLING)
  pr_err("audmgr: state is DISABLING in enable?\n");
 am->state = STATE_ENABLING;

 msg.args.set_to_one = cpu_to_be32(1);
 msg.args.tx_sample_rate = cpu_to_be32(cfg->tx_rate);
 msg.args.rx_sample_rate = cpu_to_be32(cfg->rx_rate);
 msg.args.def_method = cpu_to_be32(cfg->def_method);
 msg.args.codec_type = cpu_to_be32(cfg->codec);
 msg.args.snd_method = cpu_to_be32(cfg->snd_method);
 msg.args.cb_func = cpu_to_be32(0x11111111);
 msg.args.client_data = cpu_to_be32(0x11223344);

 msm_rpc_setup_req(&msg.hdr, AUDMGR_PROG, msm_rpc_get_vers(am->ept),
     AUDMGR_ENABLE_CLIENT);

 rc = msm_rpc_write(am->ept, &msg, sizeof(msg));
 if (rc < 0)
  return rc;

 rc = wait_event_timeout(am->wait, am->state != STATE_ENABLING, 15 * HZ);
 if (rc == 0) {
  pr_err("audmgr_enable: ARM9 did not reply to RPC am->state = %d\n", am->state);
  BUG();
 }
 if (am->state == STATE_ENABLED)
  return 0;

 pr_err("audmgr: unexpected state %d while enabling?!\n", am->state);
 return -ENODEV;
}
