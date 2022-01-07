
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sense_buffer; } ;
struct isd200_info {TYPE_1__ srb; int RegsBuf; int id; } ;


 int kfree (int ) ;

__attribute__((used)) static void isd200_free_info_ptrs(void *info_)
{
 struct isd200_info *info = (struct isd200_info *) info_;

 if (info) {
  kfree(info->id);
  kfree(info->RegsBuf);
  kfree(info->srb.sense_buffer);
 }
}
