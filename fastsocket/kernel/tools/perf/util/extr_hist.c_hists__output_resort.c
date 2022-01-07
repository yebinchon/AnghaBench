
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 void __hists__output_resort (struct hists*,int) ;

void hists__output_resort(struct hists *hists)
{
 return __hists__output_resort(hists, 0);
}
