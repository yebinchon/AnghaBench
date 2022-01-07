
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,unsigned long) ;

void
append (char **charPP, char *fromP, unsigned long length)
{

  if (length == 0)
    return;

  memcpy (*charPP, fromP, length);
  *charPP += length;
}
