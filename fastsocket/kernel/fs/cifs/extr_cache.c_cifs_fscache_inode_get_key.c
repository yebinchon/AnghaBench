
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cifsInodeInfo {int uniqueid; } ;


 int memcpy (void*,int *,int) ;

__attribute__((used)) static uint16_t cifs_fscache_inode_get_key(const void *cookie_netfs_data,
        void *buffer, uint16_t maxbuf)
{
 const struct cifsInodeInfo *cifsi = cookie_netfs_data;
 uint16_t keylen;


 keylen = sizeof(cifsi->uniqueid);
 if (keylen > maxbuf)
  keylen = 0;
 else
  memcpy(buffer, &cifsi->uniqueid, keylen);

 return keylen;
}
