
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggc_pch_data {int dummy; } ;


 struct ggc_pch_data* xcalloc (int,int) ;

struct ggc_pch_data *
init_ggc_pch (void)
{
  return xcalloc (sizeof (struct ggc_pch_data), 1);
}
