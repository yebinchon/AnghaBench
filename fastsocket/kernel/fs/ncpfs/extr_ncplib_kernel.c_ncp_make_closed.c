
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int open_mutex; int dirEntNum; int volNumber; int file_handle; int opened; } ;


 TYPE_1__* NCP_FINFO (struct inode*) ;
 int NCP_SERVER (struct inode*) ;
 int PPRINTK (char*,int ,int ,int) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ncp_close_file (int ,int ) ;

int
ncp_make_closed(struct inode *inode)
{
 int err;

 err = 0;
 mutex_lock(&NCP_FINFO(inode)->open_mutex);
 if (atomic_read(&NCP_FINFO(inode)->opened) == 1) {
  atomic_set(&NCP_FINFO(inode)->opened, 0);
  err = ncp_close_file(NCP_SERVER(inode), NCP_FINFO(inode)->file_handle);

  if (!err)
   PPRINTK("ncp_make_closed: volnum=%d, dirent=%u, error=%d\n",
    NCP_FINFO(inode)->volNumber,
    NCP_FINFO(inode)->dirEntNum, err);
 }
 mutex_unlock(&NCP_FINFO(inode)->open_mutex);
 return err;
}
