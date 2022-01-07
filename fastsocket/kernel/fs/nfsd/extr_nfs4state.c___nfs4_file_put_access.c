
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int * fi_access; } ;


 int O_RDWR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int nfs4_file_put_fd (struct nfs4_file*,int) ;

__attribute__((used)) static void __nfs4_file_put_access(struct nfs4_file *fp, int oflag)
{
 if (atomic_dec_and_test(&fp->fi_access[oflag])) {
  nfs4_file_put_fd(fp, oflag);
  if (atomic_read(&fp->fi_access[1 - oflag]) == 0)
   nfs4_file_put_fd(fp, O_RDWR);
 }
}
