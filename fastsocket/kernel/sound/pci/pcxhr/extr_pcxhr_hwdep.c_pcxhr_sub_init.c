
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_rmh {int* cmd; int cmd_len; int* stat; } ;
struct pcxhr_mgr {int board_has_analog; } ;


 int CMD_ACCESS_IO_READ ;
 scalar_t__ DSP_EXT_CMD_SET (struct pcxhr_mgr*) ;
 int IO_NUM_REG_MUTE_OUT ;
 int IO_NUM_REG_STATUS ;
 int REG_CONT_UNMUTE_INPUTS ;
 int REG_STATUS_OPTIONS ;
 int REG_STATUS_OPT_ANALOG_BOARD ;
 int REG_STATUS_OPT_DAUGHTER_MASK ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_write_io_num_reg_cont (struct pcxhr_mgr*,int ,int ,int *) ;

__attribute__((used)) static int pcxhr_sub_init(struct pcxhr_mgr *mgr)
{
 int err;
 struct pcxhr_rmh rmh;


 pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_READ);
 rmh.cmd[0] |= IO_NUM_REG_STATUS;
 rmh.cmd[1] = REG_STATUS_OPTIONS;
 rmh.cmd_len = 2;
 err = pcxhr_send_msg(mgr, &rmh);
 if (err)
  return err;

 if ((rmh.stat[1] & REG_STATUS_OPT_DAUGHTER_MASK) ==
     REG_STATUS_OPT_ANALOG_BOARD)
  mgr->board_has_analog = 1;


 err = pcxhr_write_io_num_reg_cont(mgr, REG_CONT_UNMUTE_INPUTS,
       REG_CONT_UNMUTE_INPUTS, ((void*)0));
 if (err)
  return err;

 pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_READ);
 rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
 if (DSP_EXT_CMD_SET(mgr)) {
  rmh.cmd[1] = 1;
  rmh.cmd_len = 2;
 }
 err = pcxhr_send_msg(mgr, &rmh);
 return err;
}
