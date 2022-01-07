
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disasm_line {int dummy; } ;
struct annotate_browser {int searching_backwards; int search_bf; } ;
typedef int s64 ;


 struct disasm_line* annotate_browser__find_string (struct annotate_browser*,int ,int *) ;
 int annotate_browser__set_top (struct annotate_browser*,struct disasm_line*,int ) ;
 int ui_helpline__puts (char*) ;

__attribute__((used)) static bool __annotate_browser__search(struct annotate_browser *browser)
{
 struct disasm_line *dl;
 s64 idx;

 dl = annotate_browser__find_string(browser, browser->search_bf, &idx);
 if (dl == ((void*)0)) {
  ui_helpline__puts("String not found!");
  return 0;
 }

 annotate_browser__set_top(browser, dl, idx);
 browser->searching_backwards = 0;
 return 1;
}
