
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {struct fd_host* hba_ptr; } ;
struct se_device {int dummy; } ;
struct fd_host {int dummy; } ;
struct fd_dev {struct se_device dev; struct fd_host* fd_host; } ;


 int GFP_KERNEL ;
 struct fd_dev* kzalloc (int,int ) ;
 int pr_debug (char*,char const*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct se_device *fd_alloc_device(struct se_hba *hba, const char *name)
{
 struct fd_dev *fd_dev;
 struct fd_host *fd_host = hba->hba_ptr;

 fd_dev = kzalloc(sizeof(struct fd_dev), GFP_KERNEL);
 if (!fd_dev) {
  pr_err("Unable to allocate memory for struct fd_dev\n");
  return ((void*)0);
 }

 fd_dev->fd_host = fd_host;

 pr_debug("FILEIO: Allocated fd_dev for %p\n", name);

 return &fd_dev->dev;
}
