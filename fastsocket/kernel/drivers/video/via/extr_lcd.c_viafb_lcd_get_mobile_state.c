
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 unsigned char* ioremap (int,int) ;
 int iounmap (unsigned char*) ;
 int memcpy (int*,unsigned char*,int) ;

bool viafb_lcd_get_mobile_state(bool *mobile)
{
 unsigned char *romptr, *tableptr;
 u8 core_base;
 unsigned char *biosptr;

 u32 romaddr = 0x000C0000;
 u16 start_pattern = 0;

 biosptr = ioremap(romaddr, 0x10000);

 memcpy(&start_pattern, biosptr, 2);

 if (start_pattern == 0xAA55) {


  romptr = biosptr + 0x1B;
  tableptr = biosptr + *((u16 *) romptr);



  romptr = tableptr + 18;
  romptr = biosptr + *((u16 *) romptr);




  romptr += 41;

  core_base = *romptr++;

  if (core_base & 0x8)
   *mobile = 0;
  else
   *mobile = 1;

  iounmap(biosptr);

  return 1;
 } else {
  iounmap(biosptr);
  return 0;
 }
}
