
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; scalar_t__ ptr; } ;
typedef TYPE_1__ sb ;


 scalar_t__ do_scrub_chars (int ,scalar_t__,scalar_t__) ;
 int sb_check (TYPE_1__*,scalar_t__) ;
 TYPE_1__* sb_to_scrub ;
 int scrub_from_sb ;
 scalar_t__ scrub_position ;

void
sb_scrub_and_add_sb (sb *ptr, sb *s)
{
  sb_to_scrub = s;
  scrub_position = s->ptr;

  sb_check (ptr, s->len);
  ptr->len += do_scrub_chars (scrub_from_sb, ptr->ptr + ptr->len, s->len);

  sb_to_scrub = 0;
  scrub_position = 0;
}
