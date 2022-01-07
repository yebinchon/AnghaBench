
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 char* watch_address ;
 int watch_length ;

void
watch_dump(int v)
{
 char *p = watch_address;
 int i;

 if (watch_address == ((void*)0) || watch_length == 0)
  return;

 printf("%d: watch %p len %d\n",v,watch_address,watch_length);
        for (i = 0; i < watch_length; i++) {
                if (*p >= 0x20 && *p < 0x7f) {
                        printf(" %c",*p++ & 0xff);
                } else {
                        printf(" %02x",*p++ & 0xff);
                }
        }
        printf("\n");

}
