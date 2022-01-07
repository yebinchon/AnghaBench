
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hists {int dummy; } ;
struct addr_location {int dummy; } ;


 int ENOMEM ;
 int * __hists__add_entry (struct hists*,struct addr_location*,int *,int ) ;

__attribute__((used)) static int hists__add_entry(struct hists *self,
       struct addr_location *al, u64 period)
{
 if (__hists__add_entry(self, al, ((void*)0), period) != ((void*)0))
  return 0;
 return -ENOMEM;
}
