
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int FSOCKET_ERR (char*) ;
 int INIT_FDSET_NUM ;
 int O_RDONLY ;
 int calloc (int ,int) ;
 int exit (int) ;
 int fsocket_channel_fd ;
 int fsocket_fd_num ;
 int fsocket_fd_set ;
 int get_cpus () ;
 int open (char*,int ) ;
 int sched_setaffinity (int ,int,int *) ;

__attribute__((constructor))
void fastsocket_init(void)
{
 int ret = 0;
 int i;
 cpu_set_t cmask;

 ret = open("/dev/fastsocket", O_RDONLY);
 if (ret < 0) {
  FSOCKET_ERR("Open fastsocket channel failed, please CHECK\n");

  exit(-1);
 }
 fsocket_channel_fd = ret;

 fsocket_fd_set = calloc(INIT_FDSET_NUM, sizeof(int));
 if (!fsocket_fd_set) {
  FSOCKET_ERR("Allocate memory for listen fd set failed\n");
  exit(-1);
 }

 fsocket_fd_num = INIT_FDSET_NUM;

 CPU_ZERO(&cmask);

 for (i = 0; i < get_cpus(); i++)
  CPU_SET(i, &cmask);

 ret = sched_setaffinity(0, get_cpus(), &cmask);
 if (ret < 0) {
  FSOCKET_ERR("Clear process CPU affinity failed\n");
  exit(-1);
 }

 return;
}
