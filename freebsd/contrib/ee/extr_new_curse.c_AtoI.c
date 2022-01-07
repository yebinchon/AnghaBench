
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* TERM_data_ptr ;

int
AtoI()
{
 int Temp;

 Temp = 0;
 while ((*TERM_data_ptr >= '0') && (*TERM_data_ptr <= '9'))
 {
  Temp = (Temp * 10) + (*TERM_data_ptr - '0');
  TERM_data_ptr++;
 }
 return(Temp);
}
