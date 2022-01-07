
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xyarray {size_t entry_size; size_t row_size; } ;


 struct xyarray* zalloc (int) ;

struct xyarray *xyarray__new(int xlen, int ylen, size_t entry_size)
{
 size_t row_size = ylen * entry_size;
 struct xyarray *xy = zalloc(sizeof(*xy) + xlen * row_size);

 if (xy != ((void*)0)) {
  xy->entry_size = entry_size;
  xy->row_size = row_size;
 }

 return xy;
}
