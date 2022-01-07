
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_20__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_19__ ;
typedef struct TYPE_29__ TYPE_18__ ;
typedef struct TYPE_28__ TYPE_17__ ;
typedef struct TYPE_27__ TYPE_16__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int uint32_t ;
struct carl9170_tally_rsp {int dummy; } ;
struct TYPE_24__ {int len; int cmd; int seq; int ext; } ;
struct TYPE_29__ {int tick; } ;
struct TYPE_40__ {scalar_t__ tsf; } ;
struct TYPE_38__ {TYPE_18__* vals; } ;
struct TYPE_34__ {int * vals; } ;
struct carl9170_rsp {TYPE_13__ hdr; TYPE_18__ tally; TYPE_9__ tsf; TYPE_7__ echo; TYPE_3__ rreg_res; } ;
struct TYPE_28__ {int len; int cmd; int seq; int ext; } ;
struct TYPE_27__ {int state; } ;
struct TYPE_23__ {int mode; size_t vif_id; int bcn_len; int bcn_addr; } ;
struct TYPE_21__ {int rx_filter; } ;
struct TYPE_39__ {int * vals; } ;
struct TYPE_37__ {TYPE_5__* regs; } ;
struct TYPE_35__ {int * regs; } ;
struct carl9170_cmd {TYPE_17__ hdr; TYPE_16__ psm; int disablekey; int setkey; TYPE_12__ bcn_ctrl; int wol; TYPE_10__ rx_filter; TYPE_8__ echo; TYPE_6__ wreg; TYPE_4__ rreg; } ;
struct TYPE_36__ {int val; int addr; } ;
struct TYPE_31__ {struct carl9170_cmd cmd; } ;
struct TYPE_33__ {TYPE_1__ cmd; } ;
struct TYPE_32__ {TYPE_2__ reserved; } ;
struct TYPE_25__ {int state; } ;
struct TYPE_26__ {TYPE_14__ psm; } ;
struct TYPE_22__ {int * cab_flush_trigger; int rx_filter; int mac_reset; } ;
struct TYPE_30__ {int reboot; TYPE_15__ phy; TYPE_11__ wlan; int tally; int ticks_per_usec; } ;


 int AR9170_BCN_CTRL_READY ;
 int AR9170_MAC_REG_BCN_ADDR ;
 int AR9170_MAC_REG_BCN_CTRL ;
 int AR9170_MAC_REG_BCN_LENGTH ;
 int BUG (char*,int) ;
 int CARL9170_BCN_CTRL_CAB_TRIGGER ;
 int CARL9170_CAB_TRIGGER_EMPTY ;
 int CARL9170_CMD_ASYNC_FLAG ;
 int CARL9170_MAC_RESET_FORCE ;
 int disable_key (int *) ;
 TYPE_20__ dma_mem ;
 TYPE_19__ fw ;
 int get (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (TYPE_18__*,int *,int) ;
 int memset (int *,int ,int) ;
 int read_tsf (int *) ;
 int rf_cmd (struct carl9170_cmd*,struct carl9170_rsp*) ;
 int rf_notify_set_channel () ;
 int rf_psm () ;
 int set (int ,int ) ;
 int set_key (int *) ;
 int wlan_cab_flush_queue (size_t) ;
 int wlan_modify_beacon (size_t,int ,int ) ;
 int wol_cmd (int *) ;

void handle_cmd(struct carl9170_rsp *resp)
{
 struct carl9170_cmd *cmd = &dma_mem.reserved.cmd.cmd;
 unsigned int i;


 resp->hdr.len = cmd->hdr.len;
 resp->hdr.cmd = cmd->hdr.cmd;
 resp->hdr.ext = cmd->hdr.ext;
 resp->hdr.seq |= cmd->hdr.seq;

 switch (cmd->hdr.cmd & ~CARL9170_CMD_ASYNC_FLAG) {
 case 133:
  for (i = 0; i < (cmd->hdr.len / 4); i++)
   resp->rreg_res.vals[i] = get(cmd->rreg.regs[i]);
  break;

 case 128:
  resp->hdr.len = 0;
  for (i = 0; i < (cmd->hdr.len / 8); i++)
   set(cmd->wreg.regs[i].addr, cmd->wreg.regs[i].val);
  break;

 case 141:
  memcpy(resp->echo.vals, cmd->echo.vals, cmd->hdr.len);
  break;

 case 131:
  break;

 case 135:



  fw.reboot = 1;
  break;

 case 136:
  resp->hdr.len = 8;
  read_tsf((uint32_t *)resp->tsf.tsf);
  break;

 case 132:
  resp->hdr.len = 0;
  fw.wlan.rx_filter = cmd->rx_filter.rx_filter;
  break;

 case 129:
  wol_cmd(&cmd->wol);
  break;

 case 130:
  resp->hdr.len = sizeof(struct carl9170_tally_rsp);
  memcpy(&resp->tally, &fw.tally, sizeof(struct carl9170_tally_rsp));
  resp->tally.tick = fw.ticks_per_usec;
  memset(&fw.tally, 0, sizeof(struct carl9170_tally_rsp));
  break;
 default:
  BUG("Unknown command %x\n", cmd->hdr.cmd);
  break;
 }
}
