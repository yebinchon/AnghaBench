
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device_id {int match_flags; int cu_type; int cu_model; int dev_type; int dev_model; } ;


 int ADD (char*,char*,int,int) ;
 int CCW_DEVICE_ID_MATCH_CU_MODEL ;
 int CCW_DEVICE_ID_MATCH_CU_TYPE ;
 int CCW_DEVICE_ID_MATCH_DEVICE_MODEL ;
 int CCW_DEVICE_ID_MATCH_DEVICE_TYPE ;
 void* TO_NATIVE (int) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_ccw_entry(const char *filename,
   struct ccw_device_id *id, char *alias)
{
 id->match_flags = TO_NATIVE(id->match_flags);
 id->cu_type = TO_NATIVE(id->cu_type);
 id->cu_model = TO_NATIVE(id->cu_model);
 id->dev_type = TO_NATIVE(id->dev_type);
 id->dev_model = TO_NATIVE(id->dev_model);

 strcpy(alias, "ccw:");
 ADD(alias, "t", id->match_flags&CCW_DEVICE_ID_MATCH_CU_TYPE,
     id->cu_type);
 ADD(alias, "m", id->match_flags&CCW_DEVICE_ID_MATCH_CU_MODEL,
     id->cu_model);
 ADD(alias, "dt", id->match_flags&CCW_DEVICE_ID_MATCH_DEVICE_TYPE,
     id->dev_type);
 ADD(alias, "dm", id->match_flags&CCW_DEVICE_ID_MATCH_DEVICE_MODEL,
     id->dev_model);
 add_wildcard(alias);
 return 1;
}
