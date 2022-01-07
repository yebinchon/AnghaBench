
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int refs; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void extent_buffer_get(struct extent_buffer *eb)
{
 atomic_inc(&eb->refs);
}
