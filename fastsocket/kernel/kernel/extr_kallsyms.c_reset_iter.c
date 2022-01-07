
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kallsym_iter {char* name; int pos; int nameoff; } ;
typedef int loff_t ;


 int get_symbol_offset (int ) ;

__attribute__((used)) static void reset_iter(struct kallsym_iter *iter, loff_t new_pos)
{
 iter->name[0] = '\0';
 iter->nameoff = get_symbol_offset(new_pos);
 iter->pos = new_pos;
}
