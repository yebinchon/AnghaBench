
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int page; int flag; } ;


 int META_io ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_on_page_writeback (int ) ;

__attribute__((used)) static inline void metapage_wait_for_io(struct metapage *mp)
{
 if (test_bit(META_io, &mp->flag))
  wait_on_page_writeback(mp->page);
}
