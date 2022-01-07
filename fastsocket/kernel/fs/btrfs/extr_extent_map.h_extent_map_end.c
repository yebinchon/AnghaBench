
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_map {scalar_t__ start; scalar_t__ len; } ;



__attribute__((used)) static inline u64 extent_map_end(struct extent_map *em)
{
 if (em->start + em->len < em->start)
  return (u64)-1;
 return em->start + em->len;
}
