
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ me_record; } ;
struct TYPE_6__ {scalar_t__* offset; TYPE_1__ r; } ;
struct TYPE_7__ {TYPE_2__ w; } ;
typedef TYPE_3__ ieee_data_type ;
typedef scalar_t__ file_ptr ;


 int N_W_VARIABLES ;

__attribute__((used)) static file_ptr
ieee_part_after (ieee_data_type *ieee, file_ptr here)
{
  int part;
  file_ptr after = ieee->w.r.me_record;



  for (part = 0; part < N_W_VARIABLES; part++)
    if (ieee->w.offset[part] > here && after > ieee->w.offset[part])
      after = ieee->w.offset[part];

  return after;
}
