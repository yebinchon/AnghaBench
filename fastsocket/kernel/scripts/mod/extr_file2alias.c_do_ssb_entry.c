
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device_id {scalar_t__ vendor; scalar_t__ coreid; scalar_t__ revision; } ;


 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ SSB_ANY_ID ;
 scalar_t__ SSB_ANY_REV ;
 scalar_t__ SSB_ANY_VENDOR ;
 void* TO_NATIVE (scalar_t__) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_ssb_entry(const char *filename,
   struct ssb_device_id *id, char *alias)
{
 id->vendor = TO_NATIVE(id->vendor);
 id->coreid = TO_NATIVE(id->coreid);
 id->revision = TO_NATIVE(id->revision);

 strcpy(alias, "ssb:");
 ADD(alias, "v", id->vendor != SSB_ANY_VENDOR, id->vendor);
 ADD(alias, "id", id->coreid != SSB_ANY_ID, id->coreid);
 ADD(alias, "rev", id->revision != SSB_ANY_REV, id->revision);
 add_wildcard(alias);
 return 1;
}
