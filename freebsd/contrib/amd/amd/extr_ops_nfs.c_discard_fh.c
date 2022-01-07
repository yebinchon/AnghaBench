
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_5__ {struct TYPE_5__* fh_path; TYPE_2__* fh_fs; int fh_q; } ;
typedef TYPE_1__ fh_cache ;
struct TYPE_6__ {int fs_host; } ;


 int XFREE (TYPE_1__*) ;
 int dlog (char*,int ,TYPE_1__*) ;
 int free_srvr (TYPE_2__*) ;
 int rem_que (int *) ;

__attribute__((used)) static void
discard_fh(opaque_t arg)
{
  fh_cache *fp = (fh_cache *) arg;

  rem_que(&fp->fh_q);
  if (fp->fh_fs) {
    dlog("Discarding filehandle for %s:%s", fp->fh_fs->fs_host, fp->fh_path);
    free_srvr(fp->fh_fs);
  }
  XFREE(fp->fh_path);
  XFREE(fp);
}
