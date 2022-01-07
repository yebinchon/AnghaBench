
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_iter {int tracepoint; } ;


 int tracepoint_get_iter (struct tracepoint_iter*) ;

void tracepoint_iter_next(struct tracepoint_iter *iter)
{
 iter->tracepoint++;





 tracepoint_get_iter(iter);
}
