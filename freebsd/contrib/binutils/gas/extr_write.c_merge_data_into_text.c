
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* frchainP; } ;
struct TYPE_5__ {TYPE_1__* frch_last; int frch_root; } ;
struct TYPE_4__ {int fr_next; } ;


 int data_section ;
 TYPE_3__* seg_info (int ) ;
 int text_section ;

__attribute__((used)) static void
merge_data_into_text (void)
{
  seg_info (text_section)->frchainP->frch_last->fr_next =
    seg_info (data_section)->frchainP->frch_root;
  seg_info (text_section)->frchainP->frch_last =
    seg_info (data_section)->frchainP->frch_last;
  seg_info (data_section)->frchainP = 0;
}
