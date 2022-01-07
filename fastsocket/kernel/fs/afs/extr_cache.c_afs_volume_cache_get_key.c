
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct afs_volume {int type; } ;


 int _enter (char*,int ,void*,int) ;
 int _leave (char*,int) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static uint16_t afs_volume_cache_get_key(const void *cookie_netfs_data,
     void *buffer, uint16_t bufmax)
{
 const struct afs_volume *volume = cookie_netfs_data;
 uint16_t klen;

 _enter("{%u},%p,%u", volume->type, buffer, bufmax);

 klen = sizeof(volume->type);
 if (klen > bufmax)
  return 0;

 memcpy(buffer, &volume->type, sizeof(volume->type));

 _leave(" = %u", klen);
 return klen;

}
