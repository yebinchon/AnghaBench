
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct afs_cell {int name; } ;


 int _enter (char*,struct afs_cell const*,void*,int ) ;
 int memcpy (void*,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static uint16_t afs_cell_cache_get_key(const void *cookie_netfs_data,
           void *buffer, uint16_t bufmax)
{
 const struct afs_cell *cell = cookie_netfs_data;
 uint16_t klen;

 _enter("%p,%p,%u", cell, buffer, bufmax);

 klen = strlen(cell->name);
 if (klen > bufmax)
  return 0;

 memcpy(buffer, cell->name, klen);
 return klen;
}
