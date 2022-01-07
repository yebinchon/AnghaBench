
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_stateid {int st_access_bmap; struct nfs4_file* st_file; } ;
struct nfs4_file {int dummy; } ;


 int __set_bit (int ,int *) ;
 int nfs4_access_to_omode (int ) ;
 int nfs4_file_get_access (struct nfs4_file*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void get_lock_access(struct nfs4_stateid *lock_stp, u32 access)
{
 struct nfs4_file *fp = lock_stp->st_file;
 int oflag = nfs4_access_to_omode(access);

 if (test_bit(access, &lock_stp->st_access_bmap))
  return;
 nfs4_file_get_access(fp, oflag);
 __set_bit(access, &lock_stp->st_access_bmap);
}
