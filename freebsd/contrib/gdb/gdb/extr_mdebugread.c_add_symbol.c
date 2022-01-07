
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int BLOCK_DICT (struct block*) ;
 int dict_add_symbol (int ,struct symbol*) ;

__attribute__((used)) static void
add_symbol (struct symbol *s, struct block *b)
{
  dict_add_symbol (BLOCK_DICT (b), s);
}
