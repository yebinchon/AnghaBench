
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;


 int FSCACHE_CHECKAUX_OKAY ;
 int _leave (char*) ;

__attribute__((used)) static enum fscache_checkaux afs_cell_cache_check_aux(void *cookie_netfs_data,
            const void *buffer,
            uint16_t buflen)
{
 _leave(" = OKAY");
 return FSCACHE_CHECKAUX_OKAY;
}
