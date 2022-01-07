
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_edge {int dummy; } ;
struct backref_cache {int nr_edges; } ;


 int kfree (struct backref_edge*) ;

__attribute__((used)) static void free_backref_edge(struct backref_cache *cache,
         struct backref_edge *edge)
{
 if (edge) {
  cache->nr_edges--;
  kfree(edge);
 }
}
