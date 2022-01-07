
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {TYPE_1__* parent; } ;
struct TYPE_2__ {char* name; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,char*) ;

__attribute__((used)) static int hist_entry__parent_snprintf(struct hist_entry *self, char *bf,
           size_t size, unsigned int width)
{
 return repsep_snprintf(bf, size, "%-*s", width,
         self->parent ? self->parent->name : "[other]");
}
