
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_page {int dummy; } ;


 int rb_page_commit (struct buffer_page*) ;

__attribute__((used)) static inline unsigned rb_page_size(struct buffer_page *bpage)
{
 return rb_page_commit(bpage);
}
