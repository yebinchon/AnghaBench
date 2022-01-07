
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;
struct hist_browser {struct hist_entry* he_selection; } ;



__attribute__((used)) static struct hist_entry *hist_browser__selected_entry(struct hist_browser *browser)
{
 return browser->he_selection;
}
