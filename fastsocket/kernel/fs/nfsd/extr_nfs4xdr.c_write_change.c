
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct kstat {TYPE_1__ ctime; } ;
struct inode {int i_version; } ;
typedef int __be32 ;


 scalar_t__ IS_I_VERSION (struct inode*) ;
 int write32 (int **,int ) ;
 int write64 (int **,int ) ;

__attribute__((used)) static void write_change(__be32 **p, struct kstat *stat, struct inode *inode)
{
 if (IS_I_VERSION(inode)) {
  write64(p, inode->i_version);
 } else {
  write32(p, stat->ctime.tv_sec);
  write32(p, stat->ctime.tv_nsec);
 }
}
