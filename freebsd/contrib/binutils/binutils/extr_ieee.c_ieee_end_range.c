
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_range {struct ieee_range* next; int low; } ;
struct ieee_handle {struct ieee_range* pending_ranges; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int assert (int ) ;
 int free (struct ieee_range*) ;
 int ieee_add_range (struct ieee_handle*,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
ieee_end_range (struct ieee_handle *info, bfd_vma high)
{
  struct ieee_range *r;
  bfd_vma low;

  assert (info->pending_ranges != ((void*)0));
  r = info->pending_ranges;
  low = r->low;
  info->pending_ranges = r->next;
  free (r);
  return ieee_add_range (info, FALSE, low, high);
}
