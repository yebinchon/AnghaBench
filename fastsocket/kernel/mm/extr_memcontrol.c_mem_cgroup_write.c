
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int res; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;


 int EINVAL ;
 int MEMFILE_ATTR (int ) ;
 int MEMFILE_TYPE (int ) ;


 int _MEM ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int mem_cgroup_is_root (struct mem_cgroup*) ;
 int mem_cgroup_resize_limit (struct mem_cgroup*,unsigned long long) ;
 int mem_cgroup_resize_memsw_limit (struct mem_cgroup*,unsigned long long) ;
 int res_counter_memparse_write_strategy (char const*,unsigned long long*) ;
 int res_counter_set_soft_limit (int *,unsigned long long) ;

__attribute__((used)) static int mem_cgroup_write(struct cgroup *cont, struct cftype *cft,
       const char *buffer)
{
 struct mem_cgroup *memcg = mem_cgroup_from_cont(cont);
 int type, name;
 unsigned long long val;
 int ret;

 type = MEMFILE_TYPE(cft->private);
 name = MEMFILE_ATTR(cft->private);
 switch (name) {
 case 129:
  if (mem_cgroup_is_root(memcg)) {
   ret = -EINVAL;
   break;
  }

  ret = res_counter_memparse_write_strategy(buffer, &val);
  if (ret)
   break;
  if (type == _MEM)
   ret = mem_cgroup_resize_limit(memcg, val);
  else
   ret = mem_cgroup_resize_memsw_limit(memcg, val);
  break;
 case 128:
  ret = res_counter_memparse_write_strategy(buffer, &val);
  if (ret)
   break;





  if (type == _MEM)
   ret = res_counter_set_soft_limit(&memcg->res, val);
  else
   ret = -EINVAL;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
