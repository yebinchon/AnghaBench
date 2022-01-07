
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int DPRINTK (char*) ;
 scalar_t__ ncp_make_closed (struct inode*) ;

__attribute__((used)) static int ncp_release(struct inode *inode, struct file *file) {
 if (ncp_make_closed(inode)) {
  DPRINTK("ncp_release: failed to close\n");
 }
 return 0;
}
