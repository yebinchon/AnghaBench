
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 void __hists__decay_entries (struct hists*,int,int,int) ;

void hists__decay_entries(struct hists *hists, bool zap_user, bool zap_kernel)
{
 return __hists__decay_entries(hists, zap_user, zap_kernel, 0);
}
