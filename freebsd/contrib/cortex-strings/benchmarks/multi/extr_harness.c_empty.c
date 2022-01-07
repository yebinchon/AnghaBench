
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void empty(volatile char *against)
{



  int offset = (1024 - 256)*1024;

  for (int i = offset; i < offset + 16*1024*3; i += 64)
    {
      against[i];
    }
}
