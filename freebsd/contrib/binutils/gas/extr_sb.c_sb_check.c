
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int pot; } ;
typedef TYPE_1__ sb ;


 int sb_add_sb (TYPE_1__*,TYPE_1__*) ;
 int sb_build (TYPE_1__*,int) ;
 int sb_kill (TYPE_1__*) ;

__attribute__((used)) static void
sb_check (sb *ptr, int len)
{
  if (ptr->len + len >= 1 << ptr->pot)
    {
      sb tmp;
      int pot = ptr->pot;

      while (ptr->len + len >= 1 << pot)
 pot++;
      sb_build (&tmp, pot);
      sb_add_sb (&tmp, ptr);
      sb_kill (ptr);
      *ptr = tmp;
    }
}
