
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_mount_data_kernel {unsigned long flags; unsigned long mounted_uid; unsigned long ncp_fd; unsigned long time_out; unsigned long retry_count; unsigned long uid; unsigned long gid; unsigned long file_mode; unsigned long dir_mode; int info_fd; int * wdog_pid; scalar_t__* mounted_vol; scalar_t__ int_flags; } ;


 int ECHRNG ;
 unsigned long NCP_DEFAULT_DIR_MODE ;
 unsigned long NCP_DEFAULT_FILE_MODE ;
 unsigned long NCP_DEFAULT_RETRY_COUNT ;
 unsigned long NCP_DEFAULT_TIME_OUT ;
 unsigned long NCP_MOUNT_VERSION_V4 ;
 unsigned long NCP_MOUNT_VERSION_V5 ;
 int * find_get_pid (unsigned long) ;
 int ncp_getopt (char*,char**,int ,int *,char**,unsigned long*) ;
 int ncp_opts ;
 int put_pid (int *) ;

__attribute__((used)) static int ncp_parse_options(struct ncp_mount_data_kernel *data, char *options) {
 int optval;
 char *optarg;
 unsigned long optint;
 int version = 0;
 int ret;

 data->flags = 0;
 data->int_flags = 0;
 data->mounted_uid = 0;
 data->wdog_pid = ((void*)0);
 data->ncp_fd = ~0;
 data->time_out = NCP_DEFAULT_TIME_OUT;
 data->retry_count = NCP_DEFAULT_RETRY_COUNT;
 data->uid = 0;
 data->gid = 0;
 data->file_mode = NCP_DEFAULT_FILE_MODE;
 data->dir_mode = NCP_DEFAULT_DIR_MODE;
 data->info_fd = -1;
 data->mounted_vol[0] = 0;

 while ((optval = ncp_getopt("ncpfs", &options, ncp_opts, ((void*)0), &optarg, &optint)) != 0) {
  ret = optval;
  if (ret < 0)
   goto err;
  switch (optval) {
   case 'u':
    data->uid = optint;
    break;
   case 'g':
    data->gid = optint;
    break;
   case 'o':
    data->mounted_uid = optint;
    break;
   case 'm':
    data->file_mode = optint;
    break;
   case 'd':
    data->dir_mode = optint;
    break;
   case 't':
    data->time_out = optint;
    break;
   case 'r':
    data->retry_count = optint;
    break;
   case 'f':
    data->flags = optint;
    break;
   case 'w':
    data->wdog_pid = find_get_pid(optint);
    break;
   case 'n':
    data->ncp_fd = optint;
    break;
   case 'i':
    data->info_fd = optint;
    break;
   case 'v':
    ret = -ECHRNG;
    if (optint < NCP_MOUNT_VERSION_V4)
     goto err;
    if (optint > NCP_MOUNT_VERSION_V5)
     goto err;
    version = optint;
    break;

  }
 }
 return 0;
err:
 put_pid(data->wdog_pid);
 data->wdog_pid = ((void*)0);
 return ret;
}
