
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int type; int config; } ;
typedef unsigned long pid_t ;
typedef int FILE ;


 int PATH_MAX ;
 char* PRIu32 ;
 int WRITE_ASS (int ,char*) ;
 int __WRITE_ASS (unsigned long,char*,unsigned long) ;
 int bp_type ;
 int branch_sample_type ;
 int comm ;
 int config ;
 int config1 ;
 int config2 ;
 char* dir ;
 int disabled ;
 int enable_on_exec ;
 int exclude_guest ;
 int exclude_host ;
 int exclude_hv ;
 int exclude_idle ;
 int exclude_kernel ;
 int exclude_user ;
 int exclusive ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fprintf (int *,char*,int,int ,int) ;
 int freq ;
 int inherit ;
 int inherit_stat ;
 int mmap ;
 int mmap_data ;
 int perror (char*) ;
 int pinned ;
 int precise_ip ;
 int read_format ;
 int sample_id_all ;
 int sample_period ;
 int sample_type ;
 int size ;
 int snprintf (char*,int,char*,char*,int,int ,int) ;
 int task ;
 int type ;
 int wakeup_events ;
 int watermark ;

__attribute__((used)) static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
         int fd, int group_fd, unsigned long flags)
{
 FILE *file;
 char path[PATH_MAX];

 snprintf(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
   attr->type, attr->config, fd);

 file = fopen(path, "w+");
 if (!file) {
  perror("test attr - failed to open event file");
  return -1;
 }

 if (fprintf(file, "[event-%d-%llu-%d]\n",
      attr->type, attr->config, fd) < 0) {
  perror("test attr - failed to write event file");
  fclose(file);
  return -1;
 }


 __WRITE_ASS(fd, "d", fd);
 __WRITE_ASS(group_fd, "d", group_fd);
 __WRITE_ASS(cpu, "d", cpu);
 __WRITE_ASS(pid, "d", pid);
 __WRITE_ASS(flags, "lu", flags);


 WRITE_ASS(type, PRIu32);
 WRITE_ASS(size, PRIu32);
 WRITE_ASS(config, "llu");
 WRITE_ASS(sample_period, "llu");
 WRITE_ASS(sample_type, "llu");
 WRITE_ASS(read_format, "llu");
 WRITE_ASS(disabled, "d");
 WRITE_ASS(inherit, "d");
 WRITE_ASS(pinned, "d");
 WRITE_ASS(exclusive, "d");
 WRITE_ASS(exclude_user, "d");
 WRITE_ASS(exclude_kernel, "d");
 WRITE_ASS(exclude_hv, "d");
 WRITE_ASS(exclude_idle, "d");
 WRITE_ASS(mmap, "d");
 WRITE_ASS(comm, "d");
 WRITE_ASS(freq, "d");
 WRITE_ASS(inherit_stat, "d");
 WRITE_ASS(enable_on_exec, "d");
 WRITE_ASS(task, "d");
 WRITE_ASS(watermark, "d");
 WRITE_ASS(precise_ip, "d");
 WRITE_ASS(mmap_data, "d");
 WRITE_ASS(sample_id_all, "d");
 WRITE_ASS(exclude_host, "d");
 WRITE_ASS(exclude_guest, "d");
 WRITE_ASS(wakeup_events, PRIu32);
 WRITE_ASS(bp_type, PRIu32);
 WRITE_ASS(config1, "llu");
 WRITE_ASS(config2, "llu");
 WRITE_ASS(branch_sample_type, "llu");





 fclose(file);
 return 0;
}
