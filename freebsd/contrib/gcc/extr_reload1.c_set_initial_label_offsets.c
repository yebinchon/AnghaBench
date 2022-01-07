
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int NULL_RTX ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int for_each_eh_label (int ) ;
 scalar_t__ forced_labels ;
 int memset (int ,int ,int ) ;
 int num_labels ;
 int offsets_known_at ;
 int set_initial_eh_label_offset ;
 int set_label_offsets (scalar_t__,int ,int) ;

__attribute__((used)) static void
set_initial_label_offsets (void)
{
  rtx x;
  memset (offsets_known_at, 0, num_labels);

  for (x = forced_labels; x; x = XEXP (x, 1))
    if (XEXP (x, 0))
      set_label_offsets (XEXP (x, 0), NULL_RTX, 1);

  for_each_eh_label (set_initial_eh_label_offset);
}
