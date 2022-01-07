
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int scsi_status; struct pscsi_plugin_task* priv; } ;
struct request {int q; int resid_len; int errors; struct se_cmd* end_io_data; } ;
struct pscsi_plugin_task {int pscsi_result; int * pscsi_cdb; int pscsi_resid; } ;



 int SAM_STAT_CHECK_CONDITION ;
 int __blk_put_request (int ,struct request*) ;
 int host_byte (int ) ;
 int kfree (struct pscsi_plugin_task*) ;
 int pr_debug (char*,struct se_cmd*,int ,int ) ;
 int status_byte (int ) ;
 int target_complete_cmd (struct se_cmd*,int) ;

__attribute__((used)) static void pscsi_req_done(struct request *req, int uptodate)
{
 struct se_cmd *cmd = req->end_io_data;
 struct pscsi_plugin_task *pt = cmd->priv;

 pt->pscsi_result = req->errors;
 pt->pscsi_resid = req->resid_len;

 cmd->scsi_status = status_byte(pt->pscsi_result) << 1;
 if (cmd->scsi_status) {
  pr_debug("PSCSI Status Byte exception at cmd: %p CDB:"
   " 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
   pt->pscsi_result);
 }

 switch (host_byte(pt->pscsi_result)) {
 case 128:
  target_complete_cmd(cmd, cmd->scsi_status);
  break;
 default:
  pr_debug("PSCSI Host Byte exception at cmd: %p CDB:"
   " 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
   pt->pscsi_result);
  target_complete_cmd(cmd, SAM_STAT_CHECK_CONDITION);
  break;
 }

 __blk_put_request(req->q, req);
 kfree(pt);
}
