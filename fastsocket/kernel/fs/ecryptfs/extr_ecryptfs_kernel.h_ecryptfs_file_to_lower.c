
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
struct ecryptfs_file_info {struct file* wfi_file; } ;



__attribute__((used)) static inline struct file *ecryptfs_file_to_lower(struct file *file)
{
 return ((struct ecryptfs_file_info *)file->private_data)->wfi_file;
}
