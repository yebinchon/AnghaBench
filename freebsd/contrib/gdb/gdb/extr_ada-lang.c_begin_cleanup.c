
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ begin_annotate_level ;

__attribute__((used)) static void
begin_cleanup (void *dummy)
{
  begin_annotate_level = 0;
}
