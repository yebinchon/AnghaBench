
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_hba {int hba_id; struct fd_host* hba_ptr; } ;
struct fd_host {int fd_host_id; } ;


 int ENOMEM ;
 int FD_MAX_SECTORS ;
 int FD_VERSION ;
 int GFP_KERNEL ;
 int TARGET_CORE_MOD_VERSION ;
 struct fd_host* kzalloc (int,int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int fd_attach_hba(struct se_hba *hba, u32 host_id)
{
 struct fd_host *fd_host;

 fd_host = kzalloc(sizeof(struct fd_host), GFP_KERNEL);
 if (!fd_host) {
  pr_err("Unable to allocate memory for struct fd_host\n");
  return -ENOMEM;
 }

 fd_host->fd_host_id = host_id;

 hba->hba_ptr = fd_host;

 pr_debug("CORE_HBA[%d] - TCM FILEIO HBA Driver %s on Generic"
  " Target Core Stack %s\n", hba->hba_id, FD_VERSION,
  TARGET_CORE_MOD_VERSION);
 pr_debug("CORE_HBA[%d] - Attached FILEIO HBA: %u to Generic"
  " MaxSectors: %u\n",
  hba->hba_id, fd_host->fd_host_id, FD_MAX_SECTORS);

 return 0;
}
