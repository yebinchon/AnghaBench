
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
int bz_config_ok ( void )
{
   if (sizeof(int) != 4) return 0;
   if (sizeof(short) != 2) return 0;
   if (sizeof(char) != 1) return 0;
   return 1;
}
