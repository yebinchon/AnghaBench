
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagged_tu_seen_cache {struct tagged_tu_seen_cache* next; } ;


 int free (struct tagged_tu_seen_cache*) ;
 struct tagged_tu_seen_cache const* tagged_tu_seen_base ;

__attribute__((used)) static void
free_all_tagged_tu_seen_up_to (const struct tagged_tu_seen_cache *tu_til)
{
  const struct tagged_tu_seen_cache *tu = tagged_tu_seen_base;
  while (tu != tu_til)
    {
      struct tagged_tu_seen_cache *tu1 = (struct tagged_tu_seen_cache*)tu;
      tu = tu1->next;
      free (tu1);
    }
  tagged_tu_seen_base = tu_til;
}
