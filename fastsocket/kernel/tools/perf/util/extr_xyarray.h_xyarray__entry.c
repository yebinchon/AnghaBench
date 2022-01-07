
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xyarray {void* contents; int row_size; int entry_size; } ;



__attribute__((used)) static inline void *xyarray__entry(struct xyarray *xy, int x, int y)
{
 return &xy->contents[x * xy->row_size + y * xy->entry_size];
}
