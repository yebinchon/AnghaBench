
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abbrev_info {int dummy; } ;


 int memset (struct abbrev_info*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct abbrev_info *
dwarf_alloc_abbrev (void)
{
  struct abbrev_info *abbrev;

  abbrev = (struct abbrev_info *) xmalloc (sizeof (struct abbrev_info));
  memset (abbrev, 0, sizeof (struct abbrev_info));
  return (abbrev);
}
