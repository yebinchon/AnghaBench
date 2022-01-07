
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_entry {TYPE_2__* branch_info; } ;
struct TYPE_3__ {int map; } ;
struct TYPE_4__ {TYPE_1__ from; } ;


 int _hist_entry__dso_snprintf (int ,char*,size_t,unsigned int) ;

__attribute__((used)) static int hist_entry__dso_from_snprintf(struct hist_entry *self, char *bf,
        size_t size, unsigned int width)
{
 return _hist_entry__dso_snprintf(self->branch_info->from.map,
      bf, size, width);
}
