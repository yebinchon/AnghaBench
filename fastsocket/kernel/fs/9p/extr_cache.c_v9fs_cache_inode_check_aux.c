
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct v9fs_cookie {TYPE_1__* qid; } ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
struct TYPE_2__ {int version; } ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 scalar_t__ memcmp (void const*,int *,int) ;

__attribute__((used)) static enum
fscache_checkaux v9fs_cache_inode_check_aux(void *cookie_netfs_data,
         const void *buffer,
         uint16_t buflen)
{
 const struct v9fs_cookie *vcookie = cookie_netfs_data;

 if (buflen != sizeof(vcookie->qid->version))
  return FSCACHE_CHECKAUX_OBSOLETE;

 if (memcmp(buffer, &vcookie->qid->version,
     sizeof(vcookie->qid->version)))
  return FSCACHE_CHECKAUX_OBSOLETE;

 return FSCACHE_CHECKAUX_OKAY;
}
