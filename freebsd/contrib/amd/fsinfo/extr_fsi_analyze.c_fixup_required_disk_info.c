
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int q_back; } ;
typedef TYPE_2__ qelem ;
struct TYPE_10__ {int m_q; void* m_mount; int m_name; } ;
typedef TYPE_3__ fsi_mount ;
struct TYPE_11__ {scalar_t__ d_passno; scalar_t__ d_freq; int d_mask; int d_dev; TYPE_1__* d_host; int d_ioloc; int d_fstype; TYPE_2__* d_mount; } ;
typedef TYPE_4__ disk_fs ;
struct TYPE_8__ {int h_hostname; } ;


 int BITSET (int ,int ) ;
 int DF_FREQ ;
 int DF_FSTYPE ;
 int DF_MOUNT ;
 int DF_OPTS ;
 int DF_PASSNO ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ STREQ (int ,char*) ;
 int ins_que (int *,int ) ;
 int lerror (int ,char*,int ) ;
 int lwarning (int ,char*,int ,int ) ;
 TYPE_3__* new_mount () ;
 void* new_que () ;
 int set_disk_fs (TYPE_4__*,int ,int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
fixup_required_disk_info(disk_fs *dp)
{



  if (ISSET(dp->d_mask, DF_FSTYPE)) {
    if (STREQ(dp->d_fstype, "swap")) {




      if (!ISSET(dp->d_mask, DF_PASSNO)) {
 dp->d_passno = 0;
 BITSET(dp->d_mask, DF_PASSNO);
      } else if (dp->d_freq != 0) {
 lwarning(dp->d_ioloc,
   "Pass number for %s:%s is non-zero",
   dp->d_host->h_hostname, dp->d_dev);
      }




      if (!ISSET(dp->d_mask, DF_FREQ)) {
 dp->d_freq = 0;
 BITSET(dp->d_mask, DF_FREQ);
      } else if (dp->d_freq != 0) {
 lwarning(dp->d_ioloc,
   "dump frequency for %s:%s is non-zero",
   dp->d_host->h_hostname, dp->d_dev);
      }




      if (!ISSET(dp->d_mask, DF_OPTS))
 set_disk_fs(dp, DF_OPTS, xstrdup("swap"));




      if (!ISSET(dp->d_mask, DF_MOUNT)) {
 qelem *q = new_que();
 fsi_mount *m = new_mount();

 m->m_name = xstrdup("swap");
 m->m_mount = new_que();
 ins_que(&m->m_q, q->q_back);
 dp->d_mount = q;
 BITSET(dp->d_mask, DF_MOUNT);
      } else {
 lerror(dp->d_ioloc, "%s: mount field specified for swap partition", dp->d_host->h_hostname);
      }
    } else if (STREQ(dp->d_fstype, "export")) {




      if (!ISSET(dp->d_mask, DF_PASSNO)) {
 dp->d_passno = 0;
 BITSET(dp->d_mask, DF_PASSNO);
      } else if (dp->d_passno != 0) {
 lwarning(dp->d_ioloc,
   "pass number for %s:%s is non-zero",
   dp->d_host->h_hostname, dp->d_dev);
      }




      if (!ISSET(dp->d_mask, DF_FREQ)) {
 dp->d_freq = 0;
 BITSET(dp->d_mask, DF_FREQ);
      } else if (dp->d_freq != 0) {
 lwarning(dp->d_ioloc,
   "dump frequency for %s:%s is non-zero",
   dp->d_host->h_hostname, dp->d_dev);
      }




      if (!ISSET(dp->d_mask, DF_OPTS))
 set_disk_fs(dp, DF_OPTS, xstrdup("rw,defaults"));

    }
  }
}
