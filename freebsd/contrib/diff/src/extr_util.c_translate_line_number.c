
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {scalar_t__ prefix_lines; } ;
typedef scalar_t__ lin ;



lin
translate_line_number (struct file_data const *file, lin i)
{
  return i + file->prefix_lines + 1;
}
