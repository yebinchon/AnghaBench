
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_config_descriptor {int bMaxPower; int bmAttributes; int bConfigurationValue; int bNumInterfaces; } ;


 char* format_config ;
 int sprintf (char*,char*,char,int ,int ,int ,int) ;

__attribute__((used)) static char *usb_dump_config_descriptor(char *start, char *end,
    const struct usb_config_descriptor *desc,
    int active)
{
 if (start > end)
  return start;
 start += sprintf(start, format_config,

    active ? '*' : ' ',
    desc->bNumInterfaces,
    desc->bConfigurationValue,
    desc->bmAttributes,
    desc->bMaxPower * 2);
 return start;
}
