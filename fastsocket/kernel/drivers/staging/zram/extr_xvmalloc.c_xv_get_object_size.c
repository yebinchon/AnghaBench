
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct block_header {int size; } ;
typedef scalar_t__ obj ;


 scalar_t__ XV_ALIGN ;

u32 xv_get_object_size(void *obj)
{
 struct block_header *blk;

 blk = (struct block_header *)((char *)(obj) - XV_ALIGN);
 return blk->size;
}
