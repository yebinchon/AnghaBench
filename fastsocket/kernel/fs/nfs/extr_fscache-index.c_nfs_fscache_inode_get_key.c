
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int data; int size; } ;
struct nfs_inode {TYPE_1__ fh; } ;


 int memcpy (void*,int ,int ) ;

__attribute__((used)) static uint16_t nfs_fscache_inode_get_key(const void *cookie_netfs_data,
       void *buffer, uint16_t bufmax)
{
 const struct nfs_inode *nfsi = cookie_netfs_data;
 uint16_t nsize;


 nsize = nfsi->fh.size;
 memcpy(buffer, nfsi->fh.data, nsize);
 return nsize;
}
