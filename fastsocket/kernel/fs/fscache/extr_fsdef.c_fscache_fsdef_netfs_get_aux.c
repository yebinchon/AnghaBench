
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned int uint16_t ;
struct fscache_netfs {int version; int name; } ;


 int _enter (char*,int ,int ) ;
 int memcpy (void*,int *,unsigned int) ;

__attribute__((used)) static uint16_t fscache_fsdef_netfs_get_aux(const void *cookie_netfs_data,
         void *buffer, uint16_t bufmax)
{
 const struct fscache_netfs *netfs = cookie_netfs_data;
 unsigned dlen;

 _enter("{%s.%u},", netfs->name, netfs->version);

 dlen = sizeof(uint32_t);
 if (dlen > bufmax)
  return 0;

 memcpy(buffer, &netfs->version, dlen);
 return dlen;
}
