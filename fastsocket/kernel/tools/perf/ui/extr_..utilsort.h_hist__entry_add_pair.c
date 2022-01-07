
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; int head; } ;
struct hist_entry {TYPE_1__ pairs; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void hist__entry_add_pair(struct hist_entry *he,
     struct hist_entry *pair)
{
 list_add_tail(&he->pairs.head, &pair->pairs.node);
}
