
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pfn_t ;


 scalar_t__ hwpoison_pfn ;

int is_hwpoison_pfn(pfn_t pfn)
{
 return pfn == hwpoison_pfn;
}
