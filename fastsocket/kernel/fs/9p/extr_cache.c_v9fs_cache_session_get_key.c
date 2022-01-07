
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct v9fs_session_info {int cachetag; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,struct v9fs_session_info*,...) ;
 int memcpy (void*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static uint16_t v9fs_cache_session_get_key(const void *cookie_netfs_data,
        void *buffer, uint16_t bufmax)
{
 struct v9fs_session_info *v9ses;
 uint16_t klen = 0;

 v9ses = (struct v9fs_session_info *)cookie_netfs_data;
 P9_DPRINTK(P9_DEBUG_FSC, "session %p buf %p size %u", v9ses,
     buffer, bufmax);

 if (v9ses->cachetag)
  klen = strlen(v9ses->cachetag);

 if (klen > bufmax)
  return 0;

 memcpy(buffer, v9ses->cachetag, klen);
 P9_DPRINTK(P9_DEBUG_FSC, "cache session tag %s", v9ses->cachetag);
 return klen;
}
