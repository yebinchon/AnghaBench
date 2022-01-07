
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
eq_struct_pred_data (const void *a, const void *b)
{
  return !strcmp (((const struct pred_data *)a)->name,
    ((const struct pred_data *)b)->name);
}
