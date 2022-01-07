
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct hist_entry {TYPE_1__ pairs; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool hist_entry__has_pairs(struct hist_entry *he)
{
 return !list_empty(&he->pairs.node);
}
