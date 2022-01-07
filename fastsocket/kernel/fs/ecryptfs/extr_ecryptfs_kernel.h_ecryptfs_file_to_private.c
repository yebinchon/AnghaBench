
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
struct ecryptfs_file_info {int dummy; } ;



__attribute__((used)) static inline struct ecryptfs_file_info *
ecryptfs_file_to_private(struct file *file)
{
 return (struct ecryptfs_file_info *)file->private_data;
}
