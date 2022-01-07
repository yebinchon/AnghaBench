
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cursor {int first; int * last; scalar_t__ nr; } ;



__attribute__((used)) static inline void callchain_cursor_reset(struct callchain_cursor *cursor)
{
 cursor->nr = 0;
 cursor->last = &cursor->first;
}
