
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {TYPE_1__ target; } ;
struct disasm_line {TYPE_2__ ops; int ins; } ;
struct annotate_browser {struct disasm_line* selection; } ;
typedef int s64 ;


 struct disasm_line* annotate_browser__find_offset (struct annotate_browser*,int ,int *) ;
 int annotate_browser__set_top (struct annotate_browser*,struct disasm_line*,int ) ;
 int ins__is_jump (int ) ;
 int ui_helpline__puts (char*) ;

__attribute__((used)) static bool annotate_browser__jump(struct annotate_browser *browser)
{
 struct disasm_line *dl = browser->selection;
 s64 idx;

 if (!ins__is_jump(dl->ins))
  return 0;

 dl = annotate_browser__find_offset(browser, dl->ops.target.offset, &idx);
 if (dl == ((void*)0)) {
  ui_helpline__puts("Invallid jump offset");
  return 1;
 }

 annotate_browser__set_top(browser, dl, idx);

 return 1;
}
