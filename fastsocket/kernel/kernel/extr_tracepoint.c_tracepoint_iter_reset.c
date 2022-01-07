
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_iter {int * tracepoint; int * module; } ;



void tracepoint_iter_reset(struct tracepoint_iter *iter)
{
 iter->module = ((void*)0);
 iter->tracepoint = ((void*)0);
}
