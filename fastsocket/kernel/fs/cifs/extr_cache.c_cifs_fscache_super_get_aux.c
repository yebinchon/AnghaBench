
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cifs_tcon {int resource_id; } ;
struct cifs_fscache_super_auxdata {int resource_id; } ;
typedef int auxdata ;


 int memcpy (void*,struct cifs_fscache_super_auxdata*,int) ;
 int memset (struct cifs_fscache_super_auxdata*,int ,int) ;

__attribute__((used)) static uint16_t
cifs_fscache_super_get_aux(const void *cookie_netfs_data, void *buffer,
      uint16_t maxbuf)
{
 struct cifs_fscache_super_auxdata auxdata;
 const struct cifs_tcon *tcon = cookie_netfs_data;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.resource_id = tcon->resource_id;

 if (maxbuf > sizeof(auxdata))
  maxbuf = sizeof(auxdata);

 memcpy(buffer, &auxdata, maxbuf);

 return maxbuf;
}
