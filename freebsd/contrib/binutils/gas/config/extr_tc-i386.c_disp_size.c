
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* types; } ;


 int Disp16 ;
 int Disp64 ;
 int Disp8 ;
 TYPE_1__ i ;

__attribute__((used)) static int
disp_size (unsigned int n)
{
  int size = 4;
  if (i.types[n] & (Disp8 | Disp16 | Disp64))
    {
      size = 2;
      if (i.types[n] & Disp8)
 size = 1;
      if (i.types[n] & Disp64)
 size = 8;
    }
  return size;
}
