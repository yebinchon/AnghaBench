
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct find_targ_sec_arg {scalar_t__ targ_index; TYPE_1__** resultp; } ;
typedef int bfd ;
struct TYPE_3__ {scalar_t__ target_index; } ;
typedef TYPE_1__ asection ;



__attribute__((used)) static void
find_targ_sec (bfd *abfd, asection *sect, void *obj)
{
  struct find_targ_sec_arg *args = (struct find_targ_sec_arg *) obj;
  if (sect->target_index == args->targ_index)
    *args->resultp = sect;
}
