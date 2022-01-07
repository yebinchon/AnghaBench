
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_iter {int dummy; } ;


 int tracepoint_get_iter (struct tracepoint_iter*) ;

void tracepoint_iter_start(struct tracepoint_iter *iter)
{
 tracepoint_get_iter(iter);
}
