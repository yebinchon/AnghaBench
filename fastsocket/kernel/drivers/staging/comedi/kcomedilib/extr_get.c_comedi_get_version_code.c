
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMEDI_VERSION_CODE ;

int comedi_get_version_code(void *d)
{
 return COMEDI_VERSION_CODE;
}
