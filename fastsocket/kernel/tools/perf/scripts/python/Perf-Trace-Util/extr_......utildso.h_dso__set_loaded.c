
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int loaded; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;



__attribute__((used)) static inline void dso__set_loaded(struct dso *dso, enum map_type type)
{
 dso->loaded |= (1 << type);
}
