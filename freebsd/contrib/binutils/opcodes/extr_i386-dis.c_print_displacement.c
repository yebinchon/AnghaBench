
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_signed_vma ;


 int address_mode ;



 int sprintf_vma (char*,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
print_displacement (char *buf, bfd_vma disp)
{
  bfd_signed_vma val = disp;
  char tmp[30];
  int i, j = 0;

  if (val < 0)
    {
      buf[j++] = '-';
      val = -disp;


      if (val < 0)
 {
   switch (address_mode)
     {
     case 128:
       strcpy (buf + j, "0x8000000000000000");
       break;
     case 129:
       strcpy (buf + j, "0x80000000");
       break;
     case 130:
       strcpy (buf + j, "0x8000");
       break;
     }
   return;
 }
    }

  buf[j++] = '0';
  buf[j++] = 'x';

  sprintf_vma (tmp, val);
  for (i = 0; tmp[i] == '0'; i++)
    continue;
  if (tmp[i] == '\0')
    i--;
  strcpy (buf + j, tmp + i);
}
