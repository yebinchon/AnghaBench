
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct dso {int * symbols; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 struct symbol* symbols__find (int *,int ) ;

struct symbol *dso__find_symbol(struct dso *dso,
    enum map_type type, u64 addr)
{
 return symbols__find(&dso->symbols[type], addr);
}
