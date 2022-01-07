
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int TRAILER ;
typedef int HD_BCPIO ;


 scalar_t__ BCPIO_PAD (int) ;

off_t
bcpio_endrd(void)
{
 return((off_t)(sizeof(HD_BCPIO) + sizeof(TRAILER) +
  (BCPIO_PAD(sizeof(HD_BCPIO) + sizeof(TRAILER)))));
}
