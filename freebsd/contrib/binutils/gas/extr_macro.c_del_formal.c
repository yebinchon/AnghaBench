
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int def; int actual; } ;
typedef TYPE_1__ formal_entry ;


 int free (TYPE_1__*) ;
 int sb_kill (int *) ;

__attribute__((used)) static void
del_formal (formal_entry *formal)
{
  sb_kill (&formal->actual);
  sb_kill (&formal->def);
  sb_kill (&formal->name);
  free (formal);
}
