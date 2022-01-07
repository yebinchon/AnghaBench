
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_range {struct ieee_range* next; int low; } ;
struct ieee_handle {struct ieee_range* pending_ranges; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int TRUE ;
 int memset (struct ieee_range*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_start_range (struct ieee_handle *info, bfd_vma low)
{
  struct ieee_range *r;

  r = (struct ieee_range *) xmalloc (sizeof *r);
  memset (r, 0, sizeof *r);
  r->low = low;
  r->next = info->pending_ranges;
  info->pending_ranges = r;
  return TRUE;
}
