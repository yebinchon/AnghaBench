
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_mount_data_v4 {int flags; int mounted_uid; int wdog_pid; int ncp_fd; int time_out; int retry_count; int uid; int gid; int file_mode; int dir_mode; } ;
struct ncp_mount_data {int mounted_uid; int wdog_pid; int mounted_vol; int uid; int gid; int file_mode; int dir_mode; } ;
struct compat_ncp_mount_data_v4 {int flags; int mounted_uid; int wdog_pid; int ncp_fd; int time_out; int retry_count; int uid; int gid; int file_mode; int dir_mode; } ;
struct compat_ncp_mount_data {int mounted_uid; int wdog_pid; int mounted_vol; int uid; int gid; int file_mode; int dir_mode; } ;


 int memmove (int ,int ,int) ;

__attribute__((used)) static void *do_ncp_super_data_conv(void *raw_data)
{
 int version = *(unsigned int *)raw_data;

 if (version == 3) {
  struct compat_ncp_mount_data *c_n = raw_data;
  struct ncp_mount_data *n = raw_data;

  n->dir_mode = c_n->dir_mode;
  n->file_mode = c_n->file_mode;
  n->gid = c_n->gid;
  n->uid = c_n->uid;
  memmove (n->mounted_vol, c_n->mounted_vol, (sizeof (c_n->mounted_vol) + 3 * sizeof (unsigned int)));
  n->wdog_pid = c_n->wdog_pid;
  n->mounted_uid = c_n->mounted_uid;
 } else if (version == 4) {
  struct compat_ncp_mount_data_v4 *c_n = raw_data;
  struct ncp_mount_data_v4 *n = raw_data;

  n->dir_mode = c_n->dir_mode;
  n->file_mode = c_n->file_mode;
  n->gid = c_n->gid;
  n->uid = c_n->uid;
  n->retry_count = c_n->retry_count;
  n->time_out = c_n->time_out;
  n->ncp_fd = c_n->ncp_fd;
  n->wdog_pid = c_n->wdog_pid;
  n->mounted_uid = c_n->mounted_uid;
  n->flags = c_n->flags;
 } else if (version != 5) {
  return ((void*)0);
 }

 return raw_data;
}
