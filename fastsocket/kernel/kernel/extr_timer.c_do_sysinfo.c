
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct sysinfo {unsigned long totalram; unsigned long totalswap; unsigned int mem_unit; unsigned int freeram; unsigned int sharedram; unsigned int bufferram; unsigned int freeswap; unsigned int totalhigh; unsigned int freehigh; int procs; int loads; scalar_t__ uptime; } ;


 scalar_t__ FSHIFT ;
 scalar_t__ SI_LOAD_SHIFT ;
 int get_avenrun (int ,int ,scalar_t__) ;
 int ktime_get_ts (struct timespec*) ;
 int memset (struct sysinfo*,int ,int) ;
 int monotonic_to_bootbased (struct timespec*) ;
 int nr_threads ;
 int si_meminfo (struct sysinfo*) ;
 int si_swapinfo (struct sysinfo*) ;

int do_sysinfo(struct sysinfo *info)
{
 unsigned long mem_total, sav_total;
 unsigned int mem_unit, bitcount;
 struct timespec tp;

 memset(info, 0, sizeof(struct sysinfo));

 ktime_get_ts(&tp);
 monotonic_to_bootbased(&tp);
 info->uptime = tp.tv_sec + (tp.tv_nsec ? 1 : 0);

 get_avenrun(info->loads, 0, SI_LOAD_SHIFT - FSHIFT);

 info->procs = nr_threads;

 si_meminfo(info);
 si_swapinfo(info);
 mem_total = info->totalram + info->totalswap;
 if (mem_total < info->totalram || mem_total < info->totalswap)
  goto out;
 bitcount = 0;
 mem_unit = info->mem_unit;
 while (mem_unit > 1) {
  bitcount++;
  mem_unit >>= 1;
  sav_total = mem_total;
  mem_total <<= 1;
  if (mem_total < sav_total)
   goto out;
 }
 info->mem_unit = 1;
 info->totalram <<= bitcount;
 info->freeram <<= bitcount;
 info->sharedram <<= bitcount;
 info->bufferram <<= bitcount;
 info->totalswap <<= bitcount;
 info->freeswap <<= bitcount;
 info->totalhigh <<= bitcount;
 info->freehigh <<= bitcount;

out:
 return 0;
}
