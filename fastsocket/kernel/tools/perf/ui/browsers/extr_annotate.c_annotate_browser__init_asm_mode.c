
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_entries; } ;
struct annotate_browser {int nr_asm_entries; TYPE_1__ b; } ;


 int ui_browser__reset_index (TYPE_1__*) ;

__attribute__((used)) static void annotate_browser__init_asm_mode(struct annotate_browser *browser)
{
 ui_browser__reset_index(&browser->b);
 browser->b.nr_entries = browser->nr_asm_entries;
}
