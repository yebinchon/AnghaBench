
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int exp; } ;


 int HASH_SIZE ;
 scalar_t__ REG_P (int ) ;
 int VOIDmode ;
 int invalidate (int ,int ) ;
 int remove_from_table (struct table_elt*,int) ;
 struct table_elt** table ;

__attribute__((used)) static void
flush_hash_table (void)
{
  int i;
  struct table_elt *p;

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = table[i])
      {


 if (REG_P (p->exp))
   invalidate (p->exp, VOIDmode);
 else
   remove_from_table (p, i);
      }
}
