
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; } ;
struct hist_entry {TYPE_1__ ms; } ;


 int _hist_entry__dso_snprintf (int ,char*,size_t,unsigned int) ;

__attribute__((used)) static int hist_entry__dso_snprintf(struct hist_entry *self, char *bf,
        size_t size, unsigned int width)
{
 return _hist_entry__dso_snprintf(self->ms.map, bf, size, width);
}
