
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_page {TYPE_1__* page; } ;
struct TYPE_2__ {int commit; } ;


 int local_read (int *) ;

__attribute__((used)) static inline unsigned rb_page_commit(struct buffer_page *bpage)
{
 return local_read(&bpage->page->commit);
}
