
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int ptr; } ;


 int memcpy (char*,int,int) ;
 TYPE_1__* sb_to_scrub ;
 int scrub_position ;

__attribute__((used)) static int
scrub_from_sb (char *buf, int buflen)
{
  int copy;
  copy = sb_to_scrub->len - (scrub_position - sb_to_scrub->ptr);
  if (copy > buflen)
    copy = buflen;
  memcpy (buf, scrub_position, copy);
  scrub_position += copy;
  return copy;
}
