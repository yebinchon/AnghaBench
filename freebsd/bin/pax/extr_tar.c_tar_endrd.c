
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int BLKMULT ;
 int NULLCNT ;

off_t
tar_endrd(void)
{
 return((off_t)(NULLCNT*BLKMULT));
}
