
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,struct inode*,struct file*) ;
 int fsocket_filp_close (struct file*) ;

__attribute__((used)) static inline int fsock_close(struct inode *i_node, struct file *file)
{
 DPRINTK(DEBUG, "Enter fsock_close, inode(%p) file(%p)\n", i_node, file);

 return fsocket_filp_close(file);
}
