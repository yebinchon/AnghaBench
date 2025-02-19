
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_device_id {scalar_t__ manuf; scalar_t__ id; scalar_t__ rev; scalar_t__ class; } ;


 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ BCMA_ANY_CLASS ;
 scalar_t__ BCMA_ANY_ID ;
 scalar_t__ BCMA_ANY_MANUF ;
 scalar_t__ BCMA_ANY_REV ;
 void* TO_NATIVE (scalar_t__) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_bcma_entry(const char *filename,
    struct bcma_device_id *id, char *alias)
{
 id->manuf = TO_NATIVE(id->manuf);
 id->id = TO_NATIVE(id->id);
 id->rev = TO_NATIVE(id->rev);
 id->class = TO_NATIVE(id->class);

 strcpy(alias, "bcma:");
 ADD(alias, "m", id->manuf != BCMA_ANY_MANUF, id->manuf);
 ADD(alias, "id", id->id != BCMA_ANY_ID, id->id);
 ADD(alias, "rev", id->rev != BCMA_ANY_REV, id->rev);
 ADD(alias, "cl", id->class != BCMA_ANY_CLASS, id->class);
 add_wildcard(alias);
 return 1;
}
