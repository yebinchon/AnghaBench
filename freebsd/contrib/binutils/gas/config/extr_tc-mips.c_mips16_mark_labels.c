
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
struct insn_label_list {int * label; struct insn_label_list* next; } ;
struct TYPE_4__ {struct insn_label_list* label_list; } ;
typedef TYPE_1__ segment_info_type ;
struct TYPE_5__ {int mips16; } ;


 scalar_t__ IS_ELF ;
 int STO_MIPS16 ;
 int S_GET_VALUE (int *) ;
 int S_IS_EXTERNAL (int *) ;
 int S_IS_WEAK (int *) ;
 int S_SET_OTHER (int *,int ) ;
 int S_SET_VALUE (int *,int) ;
 TYPE_3__ mips_opts ;
 int now_seg ;
 int s_is_linkonce (int *,int ) ;
 TYPE_1__* seg_info (int ) ;

__attribute__((used)) static void
mips16_mark_labels (void)
{
  segment_info_type *si = seg_info (now_seg);
  struct insn_label_list *l;

  if (!mips_opts.mips16)
    return;

  for (l = si->label_list; l != ((void*)0); l = l->next)
   {
      symbolS *label = l->label;





      if ((S_GET_VALUE (label) & 1) == 0




   && ! S_IS_WEAK (label)
   && ! S_IS_EXTERNAL (label)
   && ! s_is_linkonce (label, now_seg))
 S_SET_VALUE (label, S_GET_VALUE (label) | 1);
    }
}
