
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {struct expr** table; int size; } ;
struct expr {struct expr* next_same_hash; int expr; } ;


 unsigned int REGNO (int ) ;
 int SET_DEST (int ) ;
 unsigned int hash_set (unsigned int,int ) ;

__attribute__((used)) static struct expr *
lookup_set (unsigned int regno, struct hash_table *table)
{
  unsigned int hash = hash_set (regno, table->size);
  struct expr *expr;

  expr = table->table[hash];

  while (expr && REGNO (SET_DEST (expr->expr)) != regno)
    expr = expr->next_same_hash;

  return expr;
}
