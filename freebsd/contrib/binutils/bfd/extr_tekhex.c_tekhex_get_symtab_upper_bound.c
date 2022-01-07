
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tekhex_asymbol_struct {int dummy; } ;
struct TYPE_3__ {int symcount; } ;
typedef TYPE_1__ bfd ;



__attribute__((used)) static long
tekhex_get_symtab_upper_bound (bfd *abfd)
{
  return (abfd->symcount + 1) * (sizeof (struct tekhex_asymbol_struct *));

}
