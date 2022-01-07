
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct cred {int dummy; } ;



__attribute__((used)) static int cap_kernel_create_files_as(struct cred *new, struct inode *inode)
{
 return 0;
}
