
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 void __hists__collapse_resort (struct hists*,int) ;

void hists__collapse_resort_threaded(struct hists *hists)
{
 return __hists__collapse_resort(hists, 1);
}
