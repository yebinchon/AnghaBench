
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device_id {scalar_t__ hw_type; scalar_t__ hversion; scalar_t__ hversion_rev; scalar_t__ sversion; } ;


 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ PA_HVERSION_ANY_ID ;
 scalar_t__ PA_HVERSION_REV_ANY_ID ;
 scalar_t__ PA_HWTYPE_ANY_ID ;
 scalar_t__ PA_SVERSION_ANY_ID ;
 void* TO_NATIVE (scalar_t__) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_parisc_entry(const char *filename, struct parisc_device_id *id,
  char *alias)
{
 id->hw_type = TO_NATIVE(id->hw_type);
 id->hversion = TO_NATIVE(id->hversion);
 id->hversion_rev = TO_NATIVE(id->hversion_rev);
 id->sversion = TO_NATIVE(id->sversion);

 strcpy(alias, "parisc:");
 ADD(alias, "t", id->hw_type != PA_HWTYPE_ANY_ID, id->hw_type);
 ADD(alias, "hv", id->hversion != PA_HVERSION_ANY_ID, id->hversion);
 ADD(alias, "rev", id->hversion_rev != PA_HVERSION_REV_ANY_ID, id->hversion_rev);
 ADD(alias, "sv", id->sversion != PA_SVERSION_ANY_ID, id->sversion);

 add_wildcard(alias);
 return 1;
}
