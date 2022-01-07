
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ zb_blkid; scalar_t__ zb_level; scalar_t__ zb_object; scalar_t__ zb_objset; } ;
struct TYPE_6__ {int io_error; int io_flags; int io_abd; TYPE_3__ io_bookmark; TYPE_2__* io_private; int * io_bp; TYPE_4__* io_spa; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_7__ {int zcb_haderrors; int * zcb_errors; } ;
typedef TYPE_2__ zdb_cb_t ;
typedef TYPE_3__ zbookmark_phys_t ;
typedef int u_longlong_t ;
struct TYPE_9__ {int spa_scrub_lock; int spa_scrub_io_cv; int spa_load_verify_ios; int spa_scrub_inflight; } ;
typedef TYPE_4__ spa_t ;
typedef int blkptr_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int ZIO_FLAG_SPECULATIVE ;
 int abd_free (int ) ;
 int cv_broadcast (int *) ;
 int* dump_opt ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,int,int ,int ,int ,int ,char*) ;
 int snprintf_blkptr (char*,int,int *) ;

__attribute__((used)) static void
zdb_blkptr_done(zio_t *zio)
{
 spa_t *spa = zio->io_spa;
 blkptr_t *bp = zio->io_bp;
 int ioerr = zio->io_error;
 zdb_cb_t *zcb = zio->io_private;
 zbookmark_phys_t *zb = &zio->io_bookmark;

 abd_free(zio->io_abd);

 mutex_enter(&spa->spa_scrub_lock);
 spa->spa_scrub_inflight--;
 spa->spa_load_verify_ios--;
 cv_broadcast(&spa->spa_scrub_io_cv);

 if (ioerr && !(zio->io_flags & ZIO_FLAG_SPECULATIVE)) {
  char blkbuf[BP_SPRINTF_LEN];

  zcb->zcb_haderrors = 1;
  zcb->zcb_errors[ioerr]++;

  if (dump_opt['b'] >= 2)
   snprintf_blkptr(blkbuf, sizeof (blkbuf), bp);
  else
   blkbuf[0] = '\0';

  (void) printf("zdb_blkptr_cb: "
      "Got error %d reading "
      "<%llu, %llu, %lld, %llx> %s -- skipping\n",
      ioerr,
      (u_longlong_t)zb->zb_objset,
      (u_longlong_t)zb->zb_object,
      (u_longlong_t)zb->zb_level,
      (u_longlong_t)zb->zb_blkid,
      blkbuf);
 }
 mutex_exit(&spa->spa_scrub_lock);
}
