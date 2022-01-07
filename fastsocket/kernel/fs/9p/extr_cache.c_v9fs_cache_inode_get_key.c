
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct v9fs_cookie {TYPE_1__* qid; int inode; } ;
struct TYPE_2__ {int path; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,int *,int ) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static uint16_t v9fs_cache_inode_get_key(const void *cookie_netfs_data,
      void *buffer, uint16_t bufmax)
{
 const struct v9fs_cookie *vcookie = cookie_netfs_data;
 memcpy(buffer, &vcookie->qid->path, sizeof(vcookie->qid->path));

 P9_DPRINTK(P9_DEBUG_FSC, "inode %p get key %llu", &vcookie->inode,
     vcookie->qid->path);
 return sizeof(vcookie->qid->path);
}
