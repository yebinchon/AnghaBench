
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int dummy; } ;


 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int __nfs4_file_get_access (struct nfs4_file*,int) ;

__attribute__((used)) static void nfs4_file_get_access(struct nfs4_file *fp, int oflag)
{
 if (oflag == O_RDWR) {
  __nfs4_file_get_access(fp, O_RDONLY);
  __nfs4_file_get_access(fp, O_WRONLY);
 } else
  __nfs4_file_get_access(fp, oflag);
}
