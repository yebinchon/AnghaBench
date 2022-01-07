
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {int dummy; } ;



__attribute__((used)) static int filter_pred_and(struct filter_pred *pred __attribute((unused)),
      void *event __attribute((unused)),
      int val1, int val2)
{
 return val1 && val2;
}
