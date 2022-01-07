
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disasm_line {int dummy; } ;
struct browser_disasm_line {int dummy; } ;



__attribute__((used)) static inline struct browser_disasm_line *disasm_line__browser(struct disasm_line *dl)
{
 return (struct browser_disasm_line *)(dl + 1);
}
