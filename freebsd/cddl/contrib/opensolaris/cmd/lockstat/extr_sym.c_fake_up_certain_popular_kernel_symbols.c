
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_symbol (char*,uintptr_t,int) ;
 char* malloc (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
fake_up_certain_popular_kernel_symbols(void)
{
 char *name;
 uintptr_t addr;
 int i;


 for(i=0; i < 256; i++) {
  if ((name = malloc(20)) == ((void*)0))
   break;
  (void) sprintf(name, "cpu[%d]", i);
  addr = 0x01000000 + (i << 16);
  add_symbol(name, addr, sizeof (uintptr_t));
 }
}
