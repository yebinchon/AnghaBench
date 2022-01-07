
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct fscache_netfs {int name; int version; } ;


 int _enter (char*,int ,int ) ;
 int memcpy (void*,int ,unsigned int) ;
 unsigned int strlen (int ) ;

__attribute__((used)) static uint16_t fscache_fsdef_netfs_get_key(const void *cookie_netfs_data,
         void *buffer, uint16_t bufmax)
{
 const struct fscache_netfs *netfs = cookie_netfs_data;
 unsigned klen;

 _enter("{%s.%u},", netfs->name, netfs->version);

 klen = strlen(netfs->name);
 if (klen > bufmax)
  return 0;

 memcpy(buffer, netfs->name, klen);
 return klen;
}
