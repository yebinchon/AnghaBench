
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct mem_cgroup* kmalloc (int,int ) ;
 int mem_cgroup_size () ;
 int memset (struct mem_cgroup*,int ,int) ;
 struct mem_cgroup* vmalloc (int) ;

__attribute__((used)) static struct mem_cgroup *mem_cgroup_alloc(void)
{
 struct mem_cgroup *mem;
 int size = mem_cgroup_size();

 if (size < PAGE_SIZE)
  mem = kmalloc(size, GFP_KERNEL);
 else
  mem = vmalloc(size);

 if (mem)
  memset(mem, 0, size);
 return mem;
}
