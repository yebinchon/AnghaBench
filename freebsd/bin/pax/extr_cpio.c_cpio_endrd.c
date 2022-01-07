
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int TRAILER ;
typedef int HD_CPIO ;



off_t
cpio_endrd(void)
{
 return((off_t)(sizeof(HD_CPIO) + sizeof(TRAILER)));
}
