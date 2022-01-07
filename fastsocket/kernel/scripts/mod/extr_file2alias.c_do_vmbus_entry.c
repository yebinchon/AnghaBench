
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_vmbus_device_id {int* guid; } ;


 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_vmbus_entry(const char *filename, struct hv_vmbus_device_id *id,
     char *alias)
{
 int i;
 char guid_name[((sizeof(id->guid) + 1)) * 2];

 for (i = 0; i < (sizeof(id->guid) * 2); i += 2)
  sprintf(&guid_name[i], "%02x", id->guid[i/2]);

 strcpy(alias, "vmbus:");
 strcat(alias, guid_name);

 return 1;
}
