
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; TYPE_1__* mnt; } ;
struct kstatfs {int f_bavail; unsigned int f_ffree; } ;
struct cachefiles_cache {int bshift; scalar_t__ fstop; unsigned int bstop; scalar_t__ fcull; unsigned int bcull; scalar_t__ frun; unsigned int brun; int flags; TYPE_1__* mnt; } ;
typedef int stats ;
struct TYPE_2__ {int mnt_root; } ;


 int CACHEFILES_CULLING ;
 int EIO ;
 int ENOBUFS ;
 int _debug (char*) ;
 int _leave (char*,int) ;
 int cachefiles_io_error (struct cachefiles_cache*,char*) ;
 int cachefiles_state_changed (struct cachefiles_cache*) ;
 int memset (struct kstatfs*,int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int vfs_statfs (struct path*,struct kstatfs*) ;

int cachefiles_has_space(struct cachefiles_cache *cache,
    unsigned fnr, unsigned bnr)
{
 struct kstatfs stats;
 struct path path = {
  .mnt = cache->mnt,
  .dentry = cache->mnt->mnt_root,
 };
 int ret;
 memset(&stats, 0, sizeof(stats));

 ret = vfs_statfs(&path, &stats);
 if (ret < 0) {
  if (ret == -EIO)
   cachefiles_io_error(cache, "statfs failed");
  _leave(" = %d", ret);
  return ret;
 }

 stats.f_bavail >>= cache->bshift;






 if (stats.f_ffree > fnr)
  stats.f_ffree -= fnr;
 else
  stats.f_ffree = 0;

 if (stats.f_bavail > bnr)
  stats.f_bavail -= bnr;
 else
  stats.f_bavail = 0;

 ret = -ENOBUFS;
 if (stats.f_ffree < cache->fstop ||
     stats.f_bavail < cache->bstop)
  goto begin_cull;

 ret = 0;
 if (stats.f_ffree < cache->fcull ||
     stats.f_bavail < cache->bcull)
  goto begin_cull;

 if (test_bit(CACHEFILES_CULLING, &cache->flags) &&
     stats.f_ffree >= cache->frun &&
     stats.f_bavail >= cache->brun &&
     test_and_clear_bit(CACHEFILES_CULLING, &cache->flags)
     ) {
  _debug("cease culling");
  cachefiles_state_changed(cache);
 }


 return 0;

begin_cull:
 if (!test_and_set_bit(CACHEFILES_CULLING, &cache->flags)) {
  _debug("### CULL CACHE ###");
  cachefiles_state_changed(cache);
 }

 _leave(" = %d", ret);
 return ret;
}
