
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int file_free (struct file*) ;

void put_empty_filp(struct file *file)
{
 file_free(file);
}
