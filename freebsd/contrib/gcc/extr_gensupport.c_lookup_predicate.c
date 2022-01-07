
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {char const* name; } ;


 scalar_t__ htab_find (int ,struct pred_data*) ;
 int predicate_table ;

struct pred_data *
lookup_predicate (const char *name)
{
  struct pred_data key;
  key.name = name;
  return (struct pred_data *) htab_find (predicate_table, &key);
}
