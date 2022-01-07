
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Flip_Bytes ;
 int TERM_data_ptr ;

int
Get_int()
{
 int High_byte;
 int Low_byte;
 int temp;

 Low_byte = *((unsigned char *) TERM_data_ptr++);
 High_byte = *((unsigned char *) TERM_data_ptr++);
 if (Flip_Bytes)
 {
  temp = Low_byte;
  Low_byte = High_byte;
  High_byte = temp;
 }
 if ((High_byte == 255) && (Low_byte == 255))
  return (-1);
 else
  return(Low_byte + (High_byte * 256));
}
