
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat64 {scalar_t__ st_size; int st_mode; } ;
struct TYPE_2__ {int * rn_config; int rn_hdl; int rn_name; int rn_avl; int rn_dfd; scalar_t__ rn_nozpool; } ;
typedef TYPE_1__ rdsk_node_t ;
typedef int nvlist_t ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 int O_RDONLY ;
 scalar_t__ SPA_MINDEVSIZE ;
 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int check_slices (int ,int,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fstat64 (int,struct stat64*) ;
 int no_memory (int ) ;
 int nozpool_all_slices (int ,int ) ;
 int openat64 (int ,int ,int ) ;
 scalar_t__ zpool_read_label (int,int **) ;

__attribute__((used)) static void
zpool_open_func(void *arg)
{
 rdsk_node_t *rn = arg;
 struct stat64 statbuf;
 nvlist_t *config;
 int fd;

 if (rn->rn_nozpool)
  return;
 if ((fd = openat64(rn->rn_dfd, rn->rn_name, O_RDONLY)) < 0) {

  if (errno == ENOENT)
   nozpool_all_slices(rn->rn_avl, rn->rn_name);
  return;
 }




 if (fstat64(fd, &statbuf) != 0 ||
     (!S_ISREG(statbuf.st_mode) &&
     !S_ISCHR(statbuf.st_mode) &&
     !S_ISBLK(statbuf.st_mode))) {
  (void) close(fd);
  return;
 }
 if (statbuf.st_size < SPA_MINDEVSIZE) {
  (void) close(fd);
  return;
 }


 if ((zpool_read_label(fd, &config)) != 0 && errno == ENOMEM) {
  (void) close(fd);
  (void) no_memory(rn->rn_hdl);
  return;
 }
 (void) close(fd);

 rn->rn_config = config;
}
