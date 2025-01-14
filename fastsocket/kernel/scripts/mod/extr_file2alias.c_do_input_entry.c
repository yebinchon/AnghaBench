
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_device_id {int flags; int swbit; int ffbit; int sndbit; int ledbit; int mscbit; int absbit; int relbit; int keybit; int evbit; int version; int product; int vendor; int bustype; } ;


 int ADD (char*,char*,int,int ) ;
 int INPUT_DEVICE_ID_ABS_MAX ;
 int INPUT_DEVICE_ID_EV_MAX ;
 int INPUT_DEVICE_ID_FF_MAX ;
 int INPUT_DEVICE_ID_KEY_MAX ;
 int INPUT_DEVICE_ID_KEY_MIN_INTERESTING ;
 int INPUT_DEVICE_ID_LED_MAX ;
 int INPUT_DEVICE_ID_MATCH_ABSBIT ;
 int INPUT_DEVICE_ID_MATCH_BUS ;
 int INPUT_DEVICE_ID_MATCH_EVBIT ;
 int INPUT_DEVICE_ID_MATCH_FFBIT ;
 int INPUT_DEVICE_ID_MATCH_KEYBIT ;
 int INPUT_DEVICE_ID_MATCH_LEDBIT ;
 int INPUT_DEVICE_ID_MATCH_MSCIT ;
 int INPUT_DEVICE_ID_MATCH_PRODUCT ;
 int INPUT_DEVICE_ID_MATCH_RELBIT ;
 int INPUT_DEVICE_ID_MATCH_SNDBIT ;
 int INPUT_DEVICE_ID_MATCH_SWBIT ;
 int INPUT_DEVICE_ID_MATCH_VENDOR ;
 int INPUT_DEVICE_ID_MATCH_VERSION ;
 int INPUT_DEVICE_ID_MSC_MAX ;
 int INPUT_DEVICE_ID_REL_MAX ;
 int INPUT_DEVICE_ID_SND_MAX ;
 int INPUT_DEVICE_ID_SW_MAX ;
 int do_input (char*,int ,int ,int ) ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int do_input_entry(const char *filename, struct input_device_id *id,
     char *alias)
{
 sprintf(alias, "input:");

 ADD(alias, "b", id->flags & INPUT_DEVICE_ID_MATCH_BUS, id->bustype);
 ADD(alias, "v", id->flags & INPUT_DEVICE_ID_MATCH_VENDOR, id->vendor);
 ADD(alias, "p", id->flags & INPUT_DEVICE_ID_MATCH_PRODUCT, id->product);
 ADD(alias, "e", id->flags & INPUT_DEVICE_ID_MATCH_VERSION, id->version);

 sprintf(alias + strlen(alias), "-e*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_EVBIT)
  do_input(alias, id->evbit, 0, INPUT_DEVICE_ID_EV_MAX);
 sprintf(alias + strlen(alias), "k*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_KEYBIT)
  do_input(alias, id->keybit,
    INPUT_DEVICE_ID_KEY_MIN_INTERESTING,
    INPUT_DEVICE_ID_KEY_MAX);
 sprintf(alias + strlen(alias), "r*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_RELBIT)
  do_input(alias, id->relbit, 0, INPUT_DEVICE_ID_REL_MAX);
 sprintf(alias + strlen(alias), "a*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_ABSBIT)
  do_input(alias, id->absbit, 0, INPUT_DEVICE_ID_ABS_MAX);
 sprintf(alias + strlen(alias), "m*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_MSCIT)
  do_input(alias, id->mscbit, 0, INPUT_DEVICE_ID_MSC_MAX);
 sprintf(alias + strlen(alias), "l*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_LEDBIT)
  do_input(alias, id->ledbit, 0, INPUT_DEVICE_ID_LED_MAX);
 sprintf(alias + strlen(alias), "s*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_SNDBIT)
  do_input(alias, id->sndbit, 0, INPUT_DEVICE_ID_SND_MAX);
 sprintf(alias + strlen(alias), "f*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_FFBIT)
  do_input(alias, id->ffbit, 0, INPUT_DEVICE_ID_FF_MAX);
 sprintf(alias + strlen(alias), "w*");
 if (id->flags & INPUT_DEVICE_ID_MATCH_SWBIT)
  do_input(alias, id->swbit, 0, INPUT_DEVICE_ID_SW_MAX);
 return 1;
}
