
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct unnamed_section {int dummy; } ;
struct TYPE_7__ {unsigned int flags; } ;
struct TYPE_8__ {void (* callback ) (void const*) ;TYPE_3__* next; void const* data; TYPE_1__ common; } ;
struct TYPE_9__ {TYPE_2__ unnamed; } ;
typedef TYPE_3__ section ;


 unsigned int SECTION_UNNAMED ;
 TYPE_3__* ggc_alloc (int) ;
 TYPE_3__* unnamed_sections ;

section *
get_unnamed_section (unsigned int flags, void (*callback) (const void *),
       const void *data)
{
  section *sect;

  sect = ggc_alloc (sizeof (struct unnamed_section));
  sect->unnamed.common.flags = flags | SECTION_UNNAMED;
  sect->unnamed.callback = callback;
  sect->unnamed.data = data;
  sect->unnamed.next = unnamed_sections;

  unnamed_sections = sect;
  return sect;
}
