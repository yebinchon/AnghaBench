
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int * fi_access; scalar_t__* fi_fds; } ;


 int BUG_ON (int) ;
 size_t O_RDWR ;
 int atomic_inc (int *) ;

__attribute__((used)) static void __nfs4_file_get_access(struct nfs4_file *fp, int oflag)
{
 BUG_ON(!(fp->fi_fds[oflag] || fp->fi_fds[O_RDWR]));
 atomic_inc(&fp->fi_access[oflag]);
}
