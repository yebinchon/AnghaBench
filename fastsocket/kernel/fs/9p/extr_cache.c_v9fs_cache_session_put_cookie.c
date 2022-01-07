
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int * fscache; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,struct v9fs_session_info*,int *) ;
 int fscache_relinquish_cookie (int *,int ) ;

void v9fs_cache_session_put_cookie(struct v9fs_session_info *v9ses)
{
 P9_DPRINTK(P9_DEBUG_FSC, "session %p put cookie %p", v9ses,
     v9ses->fscache);
 fscache_relinquish_cookie(v9ses->fscache, 0);
 v9ses->fscache = ((void*)0);
}
