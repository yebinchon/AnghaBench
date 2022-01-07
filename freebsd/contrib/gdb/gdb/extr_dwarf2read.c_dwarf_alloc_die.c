
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {int dummy; } ;


 int memset (struct die_info*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct die_info *
dwarf_alloc_die (void)
{
  struct die_info *die;

  die = (struct die_info *) xmalloc (sizeof (struct die_info));
  memset (die, 0, sizeof (struct die_info));
  return (die);
}
