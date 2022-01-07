
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int fscache; int cachetag; } ;
struct TYPE_2__ {int primary_index; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,struct v9fs_session_info*,int ) ;
 int fscache_acquire_cookie (int ,int *,struct v9fs_session_info*) ;
 TYPE_1__ v9fs_cache_netfs ;
 int v9fs_cache_session_index_def ;
 int v9fs_random_cachetag (struct v9fs_session_info*) ;

void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
{

 if (!v9ses->cachetag)
  v9fs_random_cachetag(v9ses);

 v9ses->fscache = fscache_acquire_cookie(v9fs_cache_netfs.primary_index,
      &v9fs_cache_session_index_def,
      v9ses);
 P9_DPRINTK(P9_DEBUG_FSC, "session %p get cookie %p", v9ses,
     v9ses->fscache);
}
