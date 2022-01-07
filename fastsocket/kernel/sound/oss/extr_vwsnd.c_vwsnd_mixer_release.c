
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int DBGEV (char*,struct inode*,struct file*) ;
 int DEC_USE_COUNT ;

__attribute__((used)) static int vwsnd_mixer_release(struct inode *inode, struct file *file)
{
 DBGEV("(inode=0x%p, file=0x%p)\n", inode, file);
 DEC_USE_COUNT;
 return 0;
}
