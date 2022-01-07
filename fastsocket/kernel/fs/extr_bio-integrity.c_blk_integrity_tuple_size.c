
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {unsigned short tuple_size; } ;



__attribute__((used)) static inline unsigned short blk_integrity_tuple_size(struct blk_integrity *bi)
{
 if (bi)
  return bi->tuple_size;

 return 0;
}
