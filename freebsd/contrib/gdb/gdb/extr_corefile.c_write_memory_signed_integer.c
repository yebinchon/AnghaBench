
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;
typedef int CORE_ADDR ;


 char* alloca (int) ;
 int store_signed_integer (char*,int,int ) ;
 int write_memory (int ,char*,int) ;

void
write_memory_signed_integer (CORE_ADDR addr, int len, LONGEST value)
{
  char *buf = alloca (len);
  store_signed_integer (buf, len, value);
  write_memory (addr, buf, len);
}
