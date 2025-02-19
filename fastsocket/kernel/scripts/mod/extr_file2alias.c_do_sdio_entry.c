
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_device_id {scalar_t__ class; scalar_t__ vendor; scalar_t__ device; } ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ SDIO_ANY_ID ;
 void* TO_NATIVE (scalar_t__) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_sdio_entry(const char *filename,
   struct sdio_device_id *id, char *alias)
{
 id->class = TO_NATIVE(id->class);
 id->vendor = TO_NATIVE(id->vendor);
 id->device = TO_NATIVE(id->device);

 strcpy(alias, "sdio:");
 ADD(alias, "c", id->class != (__u8)SDIO_ANY_ID, id->class);
 ADD(alias, "v", id->vendor != (__u16)SDIO_ANY_ID, id->vendor);
 ADD(alias, "d", id->device != (__u16)SDIO_ANY_ID, id->device);
 add_wildcard(alias);
 return 1;
}
