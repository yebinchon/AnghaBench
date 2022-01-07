
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int bus; int vendor; int product; } ;


 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ HID_ANY_ID ;
 void* TO_NATIVE (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int do_hid_entry(const char *filename,
        struct hid_device_id *id, char *alias)
{
 id->bus = TO_NATIVE(id->bus);
 id->vendor = TO_NATIVE(id->vendor);
 id->product = TO_NATIVE(id->product);

 sprintf(alias, "hid:b%04X", id->bus);
 ADD(alias, "v", id->vendor != HID_ANY_ID, id->vendor);
 ADD(alias, "p", id->product != HID_ANY_ID, id->product);

 return 1;
}
