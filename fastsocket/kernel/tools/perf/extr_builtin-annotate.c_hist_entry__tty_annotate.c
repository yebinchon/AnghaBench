
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_annotate {int full_paths; int print_line; } ;
struct TYPE_2__ {int map; int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;


 int symbol__tty_annotate (int ,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int hist_entry__tty_annotate(struct hist_entry *he, int evidx,
        struct perf_annotate *ann)
{
 return symbol__tty_annotate(he->ms.sym, he->ms.map, evidx,
        ann->print_line, ann->full_paths, 0, 0);
}
