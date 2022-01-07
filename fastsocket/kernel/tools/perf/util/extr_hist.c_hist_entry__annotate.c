
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;


 int symbol__annotate (int ,int ,size_t) ;

int hist_entry__annotate(struct hist_entry *he, size_t privsize)
{
 return symbol__annotate(he->ms.sym, he->ms.map, privsize);
}
