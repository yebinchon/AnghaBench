
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 int hists__baseline_only (struct hists*) ;
 int hists__compute_resort (struct hists*) ;
 int hists__fprintf (struct hists*,int,int ,int ,int ) ;
 int hists__link (struct hists*,struct hists*) ;
 int hists__match (struct hists*,struct hists*) ;
 int hists__precompute (struct hists*) ;
 scalar_t__ show_baseline_only ;
 scalar_t__ sort_compute ;
 int stdout ;

__attribute__((used)) static void hists__process(struct hists *old, struct hists *new)
{
 hists__match(new, old);

 if (show_baseline_only)
  hists__baseline_only(new);
 else
  hists__link(new, old);

 if (sort_compute) {
  hists__precompute(new);
  hists__compute_resort(new);
 }

 hists__fprintf(new, 1, 0, 0, stdout);
}
