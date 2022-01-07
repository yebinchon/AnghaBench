
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;
struct kmap {int dummy; } ;



__attribute__((used)) static inline struct kmap *map__kmap(struct map *self)
{
 return (struct kmap *)(self + 1);
}
