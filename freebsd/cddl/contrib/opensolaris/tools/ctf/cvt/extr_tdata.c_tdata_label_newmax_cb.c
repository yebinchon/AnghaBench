
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int le_idx; } ;
typedef TYPE_1__ labelent_t ;



__attribute__((used)) static int
tdata_label_newmax_cb(void *data, void *arg)
{
 labelent_t *le = data;
 int *newmaxp = arg;

 if (le->le_idx > *newmaxp) {
  le->le_idx = *newmaxp;
  return (1);
 }

 return (0);
}
