
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REAL_VALUE_TYPE ;


 int get_inf (int *,int ) ;

void
real_inf (REAL_VALUE_TYPE *r)
{
  get_inf (r, 0);
}
