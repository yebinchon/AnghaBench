
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;



int
uuid_is_nil(uuid_t *uuid)
{
 int i;
 char *cp = (char *)uuid;

 if (uuid == ((void*)0))
  return 0;

 for (i = 0; i < sizeof *uuid; i++)
  if (*cp++) return 0;
 return 1;
}
