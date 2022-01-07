
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int mg; } ;
struct map {int dummy; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 struct map* map_groups__find (int *,int,int ) ;

__attribute__((used)) static inline struct map *thread__find_map(struct thread *self,
        enum map_type type, u64 addr)
{
 return self ? map_groups__find(&self->mg, type, addr) : ((void*)0);
}
