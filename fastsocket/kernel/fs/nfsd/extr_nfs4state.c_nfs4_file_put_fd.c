
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int ** fi_fds; } ;


 int fput (int *) ;

__attribute__((used)) static void nfs4_file_put_fd(struct nfs4_file *fp, int oflag)
{
 if (fp->fi_fds[oflag]) {
  fput(fp->fi_fds[oflag]);
  fp->fi_fds[oflag] = ((void*)0);
 }
}
