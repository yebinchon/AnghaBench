
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap ;


 int debug_bitmap_file (int ,int ) ;
 int stdout ;

void
debug_bitmap (bitmap head)
{
  debug_bitmap_file (stdout, head);
}
