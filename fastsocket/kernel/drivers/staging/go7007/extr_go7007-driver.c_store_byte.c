
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct go7007_buffer {scalar_t__ bytesused; unsigned int offset; int * pages; } ;


 scalar_t__ GO7007_BUF_SIZE ;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ page_address (int ) ;

__attribute__((used)) static inline void store_byte(struct go7007_buffer *gobuf, u8 byte)
{
 if (gobuf != ((void*)0) && gobuf->bytesused < GO7007_BUF_SIZE) {
  unsigned int pgidx = gobuf->offset >> PAGE_SHIFT;
  unsigned int pgoff = gobuf->offset & ~PAGE_MASK;

  *((u8 *)page_address(gobuf->pages[pgidx]) + pgoff) = byte;
  ++gobuf->offset;
  ++gobuf->bytesused;
 }
}
