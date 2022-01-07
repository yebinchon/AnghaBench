
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int memsw; int res; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;


 int BUG () ;
 int MEMFILE_ATTR (int ) ;
 int MEMFILE_TYPE (int ) ;
 int RES_USAGE ;


 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int mem_cgroup_usage (struct mem_cgroup*,int) ;
 int res_counter_read_u64 (int *,int) ;

__attribute__((used)) static u64 mem_cgroup_read(struct cgroup *cont, struct cftype *cft)
{
 struct mem_cgroup *mem = mem_cgroup_from_cont(cont);
 u64 val;
 int type, name;

 type = MEMFILE_TYPE(cft->private);
 name = MEMFILE_ATTR(cft->private);
 switch (type) {
 case 129:
  if (name == RES_USAGE)
   val = mem_cgroup_usage(mem, 0);
  else
   val = res_counter_read_u64(&mem->res, name);
  break;
 case 128:
  if (name == RES_USAGE)
   val = mem_cgroup_usage(mem, 1);
  else
   val = res_counter_read_u64(&mem->memsw, name);
  break;
 default:
  BUG();
  break;
 }
 return val;
}
