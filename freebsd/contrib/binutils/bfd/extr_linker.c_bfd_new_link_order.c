
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfd_link_order {struct bfd_link_order* next; int type; } ;
typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_6__ {struct bfd_link_order* link_order; } ;
struct TYPE_5__ {struct bfd_link_order* link_order; } ;
struct TYPE_7__ {TYPE_2__ map_tail; TYPE_1__ map_head; } ;
typedef TYPE_3__ asection ;


 int bfd_undefined_link_order ;
 struct bfd_link_order* bfd_zalloc (int *,int) ;

struct bfd_link_order *
bfd_new_link_order (bfd *abfd, asection *section)
{
  bfd_size_type amt = sizeof (struct bfd_link_order);
  struct bfd_link_order *new;

  new = bfd_zalloc (abfd, amt);
  if (!new)
    return ((void*)0);

  new->type = bfd_undefined_link_order;

  if (section->map_tail.link_order != ((void*)0))
    section->map_tail.link_order->next = new;
  else
    section->map_head.link_order = new;
  section->map_tail.link_order = new;

  return new;
}
