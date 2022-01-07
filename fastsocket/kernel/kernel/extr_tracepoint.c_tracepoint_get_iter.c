
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_iter {int tracepoint; int module; } ;


 int __start___tracepoints ;
 int __stop___tracepoints ;
 int module_get_iter_tracepoints (struct tracepoint_iter*) ;
 int tracepoint_get_iter_range (int *,int ,int ) ;
 int tracepoint_iter_reset (struct tracepoint_iter*) ;

__attribute__((used)) static void tracepoint_get_iter(struct tracepoint_iter *iter)
{
 int found = 0;


 if (!iter->module) {
  found = tracepoint_get_iter_range(&iter->tracepoint,
    __start___tracepoints, __stop___tracepoints);
  if (found)
   goto end;
 }

 found = module_get_iter_tracepoints(iter);
end:
 if (!found)
  tracepoint_iter_reset(iter);
}
