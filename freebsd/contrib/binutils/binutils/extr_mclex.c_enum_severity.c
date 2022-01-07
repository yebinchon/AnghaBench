
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__ const* next; int group_name; } ;
typedef TYPE_1__ const mc_keyword ;


 TYPE_1__ const* keyword_top ;
 scalar_t__ strcmp (int ,char*) ;

const mc_keyword *
enum_severity (int e)
{
  mc_keyword *h = keyword_top;

  while (h != ((void*)0))
    {
      while (h && strcmp (h->group_name, "severity") != 0)
 h = h->next;
      if (e == 0)
 return h;
      --e;
      if (h)
 h = h->next;
    }
  return h;
}
