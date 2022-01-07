
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_cols; int vc_rows; int vc_can_do_color; } ;


 int newport_xsize ;
 int newport_ysize ;

__attribute__((used)) static void newport_init(struct vc_data *vc, int init)
{
 vc->vc_cols = newport_xsize / 8;
 vc->vc_rows = newport_ysize / 16;
 vc->vc_can_do_color = 1;
}
