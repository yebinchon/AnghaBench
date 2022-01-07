
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line6_dump_request {int dummy; } ;


 int LINE6_DUMP_CURRENT ;
 int line6_dump_started (struct line6_dump_request*,int ) ;

void line6_invalidate_current(struct line6_dump_request *l6dr)
{
 line6_dump_started(l6dr, LINE6_DUMP_CURRENT);
}
