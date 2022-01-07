
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int name; } ;
struct afs_vlocation {TYPE_1__ vldb; } ;


 int _enter (char*,int ,void*,int ) ;
 int _leave (char*,int ) ;
 int memcpy (void*,int ,int ) ;
 int strnlen (int ,int) ;

__attribute__((used)) static uint16_t afs_vlocation_cache_get_key(const void *cookie_netfs_data,
         void *buffer, uint16_t bufmax)
{
 const struct afs_vlocation *vlocation = cookie_netfs_data;
 uint16_t klen;

 _enter("{%s},%p,%u", vlocation->vldb.name, buffer, bufmax);

 klen = strnlen(vlocation->vldb.name, sizeof(vlocation->vldb.name));
 if (klen > bufmax)
  return 0;

 memcpy(buffer, vlocation->vldb.name, klen);

 _leave(" = %u", klen);
 return klen;
}
