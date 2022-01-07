
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hll_file; } ;


 int file_info (char const*) ;
 scalar_t__ listing ;
 TYPE_1__* listing_tail ;

void
listing_source_file (const char *file)
{
  if (listing)
    listing_tail->hll_file = file_info (file);
}
