
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int le_name; } ;
typedef TYPE_1__ labelent_t ;


 int streq (int ,int ) ;

__attribute__((used)) static int
tdata_label_find_cb(void *arg1, void *arg2)
{
 labelent_t *le = arg1;
 labelent_t *tmpl = arg2;
 return (streq(le->le_name, tmpl->le_name));
}
