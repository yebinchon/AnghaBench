
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {int st_access_bmap; int st_file; } ;


 int __clear_bit (int,int *) ;
 int nfs4_access_to_omode (int) ;
 int nfs4_file_put_access (int ,int ) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static inline void nfs4_file_downgrade(struct nfs4_stateid *stp, unsigned int to_access)
{
 int i;

 for (i = 1; i < 4; i++) {
  if (test_bit(i, &stp->st_access_bmap)
     && ((i & to_access) != i)) {
   nfs4_file_put_access(stp->st_file, nfs4_access_to_omode(i));
   __clear_bit(i, &stp->st_access_bmap);
  }
 }
}
