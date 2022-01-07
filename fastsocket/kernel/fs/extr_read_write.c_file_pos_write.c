
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;



__attribute__((used)) static inline void file_pos_write(struct file *file, loff_t pos)
{
 file->f_pos = pos;
}
