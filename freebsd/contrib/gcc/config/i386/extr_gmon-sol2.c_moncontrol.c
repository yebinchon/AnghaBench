
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phdr {int dummy; } ;


 int profil (unsigned short*,scalar_t__,long,int ) ;
 int profiling ;
 scalar_t__ s_lowpc ;
 int s_scale ;
 scalar_t__ sbuf ;
 scalar_t__ ssiz ;

__attribute__((used)) static void
moncontrol(int mode)
{
    if (mode)
    {

      profil((unsigned short *)(sbuf + sizeof(struct phdr)),
      ssiz - sizeof(struct phdr),
      (long)s_lowpc, s_scale);

      profiling = 0;
    } else {

      profil((unsigned short *)0, 0, 0, 0);
      profiling = 3;
    }
}
