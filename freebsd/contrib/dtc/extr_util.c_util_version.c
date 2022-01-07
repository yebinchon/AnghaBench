
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DTC_VERSION ;
 int exit (int ) ;
 int printf (char*,char*) ;

void util_version(void)
{
 printf("Version: %s\n", DTC_VERSION);
 exit(0);
}
