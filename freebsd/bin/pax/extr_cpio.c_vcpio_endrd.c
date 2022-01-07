
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int TRAILER ;
typedef int HD_VCPIO ;


 scalar_t__ VCPIO_PAD (int) ;

off_t
vcpio_endrd(void)
{
 return((off_t)(sizeof(HD_VCPIO) + sizeof(TRAILER) +
  (VCPIO_PAD(sizeof(HD_VCPIO) + sizeof(TRAILER)))));
}
