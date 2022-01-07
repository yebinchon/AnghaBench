
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



__attribute__((used)) static int smack_file_permission(struct file *file, int mask)
{
 return 0;
}
