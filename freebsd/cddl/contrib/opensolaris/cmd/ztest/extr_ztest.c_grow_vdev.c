
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* vdev_path; TYPE_1__* vdev_ops; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef int ulong_t ;
typedef int spa_t ;
struct TYPE_8__ {int zo_verbose; } ;
struct TYPE_6__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int O_RDWR ;
 int RW_READER ;
 scalar_t__ SCL_STATE ;
 int SEEK_END ;
 int close (int) ;
 int ftruncate (int,size_t) ;
 size_t lseek (int,int ,int ) ;
 int open (char*,int ) ;
 int printf (char*,char*,int ,int ) ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 TYPE_3__ ztest_opts ;

vdev_t *
grow_vdev(vdev_t *vd, void *arg)
{
 spa_t *spa = vd->vdev_spa;
 size_t *newsize = arg;
 size_t fsize;
 int fd;

 ASSERT(spa_config_held(spa, SCL_STATE, RW_READER) == SCL_STATE);
 ASSERT(vd->vdev_ops->vdev_op_leaf);

 if ((fd = open(vd->vdev_path, O_RDWR)) == -1)
  return (vd);

 fsize = lseek(fd, 0, SEEK_END);
 (void) ftruncate(fd, *newsize);

 if (ztest_opts.zo_verbose >= 6) {
  (void) printf("%s grew from %lu to %lu bytes\n",
      vd->vdev_path, (ulong_t)fsize, (ulong_t)*newsize);
 }
 (void) close(fd);
 return (((void*)0));
}
