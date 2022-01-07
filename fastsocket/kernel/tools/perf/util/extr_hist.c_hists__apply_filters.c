
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;
struct hist_entry {int dummy; } ;


 int hists__filter_entry_by_dso (struct hists*,struct hist_entry*) ;
 int hists__filter_entry_by_symbol (struct hists*,struct hist_entry*) ;
 int hists__filter_entry_by_thread (struct hists*,struct hist_entry*) ;

__attribute__((used)) static void hists__apply_filters(struct hists *hists, struct hist_entry *he)
{
 hists__filter_entry_by_dso(hists, he);
 hists__filter_entry_by_thread(hists, he);
 hists__filter_entry_by_symbol(hists, he);
}
