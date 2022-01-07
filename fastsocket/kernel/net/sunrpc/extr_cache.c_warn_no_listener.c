
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {scalar_t__ last_warn; scalar_t__ last_close; int (* warn_no_listener ) (struct cache_detail*,int) ;} ;


 int stub1 (struct cache_detail*,int) ;

__attribute__((used)) static void warn_no_listener(struct cache_detail *detail)
{
 if (detail->last_warn != detail->last_close) {
  detail->last_warn = detail->last_close;
  if (detail->warn_no_listener)
   detail->warn_no_listener(detail, detail->last_close != 0);
 }
}
