
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;
struct block {int dummy; } ;


 struct symbol* block_function (struct block*) ;
 struct block* get_frame_block (struct frame_info*,int ) ;

struct symbol *
get_frame_function (struct frame_info *frame)
{
  struct block *bl = get_frame_block (frame, 0);
  if (bl == 0)
    return 0;
  return block_function (bl);
}
