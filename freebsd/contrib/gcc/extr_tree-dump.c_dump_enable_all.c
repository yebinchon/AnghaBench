
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int letter; int state; } ;
struct TYPE_3__ {int flags; int letter; int state; } ;


 int TDF_IPA ;
 int TDF_RTL ;
 int TDF_TREE ;
 scalar_t__ TDI_end ;
 int TDI_none ;
 TYPE_2__* dump_files ;
 TYPE_1__* extra_dump_files ;
 size_t extra_dump_files_in_use ;

__attribute__((used)) static int
dump_enable_all (int flags, int letter)
{
  int ir_type = (flags & (TDF_TREE | TDF_RTL | TDF_IPA));
  int n = 0;
  size_t i;

  for (i = TDI_none + 1; i < (size_t) TDI_end; i++)
    if ((dump_files[i].flags & ir_type)
 && (letter == 0 || letter == dump_files[i].letter))
      {
        dump_files[i].state = -1;
        dump_files[i].flags |= flags;
        n++;
      }

  for (i = 0; i < extra_dump_files_in_use; i++)
    if ((extra_dump_files[i].flags & ir_type)
 && (letter == 0 || letter == extra_dump_files[i].letter))
      {
        extra_dump_files[i].state = -1;
        extra_dump_files[i].flags |= flags;
 n++;
      }

  return n;
}
