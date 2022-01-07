
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t READ ;
 size_t WRITE ;
 struct hd_struct* dev_to_part (struct device*) ;
 int io_ticks ;
 int * ios ;
 int jiffies_to_msecs (int) ;
 int * merges ;
 int part_in_flight (struct hd_struct*) ;
 int part_round_stats (int,struct hd_struct*) ;
 int part_stat_lock () ;
 int part_stat_read (struct hd_struct*,int ) ;
 int part_stat_unlock () ;
 int * sectors ;
 int sprintf (char*,char*,int,int,unsigned long long,int ,int,int,unsigned long long,int ,int ,int ,int ) ;
 int * ticks ;
 int time_in_queue ;

ssize_t part_stat_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct hd_struct *p = dev_to_part(dev);
 int cpu;

 cpu = part_stat_lock();
 part_round_stats(cpu, p);
 part_stat_unlock();
 return sprintf(buf,
  "%8lu %8lu %8llu %8u "
  "%8lu %8lu %8llu %8u "
  "%8u %8u %8u"
  "\n",
  part_stat_read(p, ios[READ]),
  part_stat_read(p, merges[READ]),
  (unsigned long long)part_stat_read(p, sectors[READ]),
  jiffies_to_msecs(part_stat_read(p, ticks[READ])),
  part_stat_read(p, ios[WRITE]),
  part_stat_read(p, merges[WRITE]),
  (unsigned long long)part_stat_read(p, sectors[WRITE]),
  jiffies_to_msecs(part_stat_read(p, ticks[WRITE])),
  part_in_flight(p),
  jiffies_to_msecs(part_stat_read(p, io_ticks)),
  jiffies_to_msecs(part_stat_read(p, time_in_queue)));
}
