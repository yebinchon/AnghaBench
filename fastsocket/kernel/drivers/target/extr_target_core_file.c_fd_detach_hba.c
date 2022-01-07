
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {struct fd_host* hba_ptr; int hba_id; } ;
struct fd_host {int fd_host_id; } ;


 int kfree (struct fd_host*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void fd_detach_hba(struct se_hba *hba)
{
 struct fd_host *fd_host = hba->hba_ptr;

 pr_debug("CORE_HBA[%d] - Detached FILEIO HBA: %u from Generic"
  " Target Core\n", hba->hba_id, fd_host->fd_host_id);

 kfree(fd_host);
 hba->hba_ptr = ((void*)0);
}
