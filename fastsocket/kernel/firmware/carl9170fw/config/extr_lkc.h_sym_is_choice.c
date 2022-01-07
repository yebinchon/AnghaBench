
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int flags; } ;


 int SYMBOL_CHOICE ;

__attribute__((used)) static inline bool sym_is_choice(struct symbol *sym)
{
 return sym->flags & SYMBOL_CHOICE ? 1 : 0;
}
