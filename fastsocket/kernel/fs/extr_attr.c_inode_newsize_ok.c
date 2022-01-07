
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {scalar_t__ i_size; TYPE_3__* i_sb; } ;
typedef scalar_t__ loff_t ;
struct TYPE_9__ {TYPE_2__* signal; } ;
struct TYPE_8__ {scalar_t__ s_maxbytes; } ;
struct TYPE_7__ {TYPE_1__* rlim; } ;
struct TYPE_6__ {unsigned long rlim_cur; } ;


 int EFBIG ;
 int ETXTBSY ;
 scalar_t__ IS_SWAPFILE (struct inode const*) ;
 size_t RLIMIT_FSIZE ;
 unsigned long RLIM_INFINITY ;
 int SIGXFSZ ;
 TYPE_4__* current ;
 int send_sig (int ,TYPE_4__*,int ) ;

int inode_newsize_ok(const struct inode *inode, loff_t offset)
{
 if (inode->i_size < offset) {
  unsigned long limit;

  limit = current->signal->rlim[RLIMIT_FSIZE].rlim_cur;
  if (limit != RLIM_INFINITY && offset > limit)
   goto out_sig;
  if (offset > inode->i_sb->s_maxbytes)
   goto out_big;
 } else {





  if (IS_SWAPFILE(inode))
   return -ETXTBSY;
 }

 return 0;
out_sig:
 send_sig(SIGXFSZ, current, 0);
out_big:
 return -EFBIG;
}
