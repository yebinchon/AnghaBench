
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NULL_RTX ;
 int set_label_offsets (int ,int ,int) ;

__attribute__((used)) static void
set_initial_eh_label_offset (rtx label)
{
  set_label_offsets (label, NULL_RTX, 1);
}
