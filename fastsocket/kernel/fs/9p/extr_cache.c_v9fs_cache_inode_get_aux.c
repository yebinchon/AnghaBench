
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct v9fs_cookie {TYPE_1__* qid; int inode; } ;
struct TYPE_2__ {int version; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,int *,int ) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static uint16_t v9fs_cache_inode_get_aux(const void *cookie_netfs_data,
      void *buffer, uint16_t buflen)
{
 const struct v9fs_cookie *vcookie = cookie_netfs_data;
 memcpy(buffer, &vcookie->qid->version, sizeof(vcookie->qid->version));

 P9_DPRINTK(P9_DEBUG_FSC, "inode %p get aux %u", &vcookie->inode,
     vcookie->qid->version);
 return sizeof(vcookie->qid->version);
}
