
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;
typedef TYPE_1__ bdaddr_t ;


 int sprintf (char*,char*,int,int,int,int,int,int) ;

char *batostr(bdaddr_t *ba)
{
 static char str[2][18];
 static int i = 1;

 i ^= 1;
 sprintf(str[i], "%2.2X:%2.2X:%2.2X:%2.2X:%2.2X:%2.2X",
  ba->b[0], ba->b[1], ba->b[2],
  ba->b[3], ba->b[4], ba->b[5]);

 return str[i];
}
