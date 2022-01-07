
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fillup (unsigned char*) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void
sysroff_swap_tr_in (void)
{
  unsigned char raw[255];

  memset (raw, 0, 255);
  fillup (raw);
}
