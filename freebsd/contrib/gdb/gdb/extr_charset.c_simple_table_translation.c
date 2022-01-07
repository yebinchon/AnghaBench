
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct translation {int dummy; } ;


 struct translation* table_translation (char const*,char const*,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct translation *
simple_table_translation (const char *from, const char *to, int *table)
{
  return table_translation (from, to, table, 0, 0, 0, 0);
}
