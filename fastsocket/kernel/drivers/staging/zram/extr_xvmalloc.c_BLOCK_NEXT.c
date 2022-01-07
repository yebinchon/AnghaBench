
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_header {int size; } ;


 int XV_ALIGN ;

__attribute__((used)) static struct block_header *BLOCK_NEXT(struct block_header *block)
{
 return (struct block_header *)
  ((char *)block + block->size + XV_ALIGN);
}
