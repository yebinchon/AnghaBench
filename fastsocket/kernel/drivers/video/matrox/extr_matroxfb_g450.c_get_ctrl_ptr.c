
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct matrox_fb_info {int dummy; } ;
struct TYPE_2__ {int control; } ;


 TYPE_1__* g450_controls ;

__attribute__((used)) static inline int *get_ctrl_ptr(struct matrox_fb_info *minfo, unsigned int idx)
{
 return (int*)((char*)minfo + g450_controls[idx].control);
}
