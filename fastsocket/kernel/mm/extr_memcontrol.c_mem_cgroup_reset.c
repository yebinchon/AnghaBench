
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int memsw; int res; } ;
struct cgroup {int dummy; } ;


 int MEMFILE_ATTR (unsigned int) ;
 int MEMFILE_TYPE (unsigned int) ;


 int _MEM ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int res_counter_reset_failcnt (int *) ;
 int res_counter_reset_max (int *) ;

__attribute__((used)) static int mem_cgroup_reset(struct cgroup *cont, unsigned int event)
{
 struct mem_cgroup *mem;
 int type, name;

 mem = mem_cgroup_from_cont(cont);
 type = MEMFILE_TYPE(event);
 name = MEMFILE_ATTR(event);
 switch (name) {
 case 128:
  if (type == _MEM)
   res_counter_reset_max(&mem->res);
  else
   res_counter_reset_max(&mem->memsw);
  break;
 case 129:
  if (type == _MEM)
   res_counter_reset_failcnt(&mem->res);
  else
   res_counter_reset_failcnt(&mem->memsw);
  break;
 }

 return 0;
}
