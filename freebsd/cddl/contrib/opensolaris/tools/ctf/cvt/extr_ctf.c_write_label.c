
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int le_idx; int le_name; } ;
typedef TYPE_1__ labelent_t ;
typedef int ctl ;
struct TYPE_7__ {int ctl_typeidx; int ctl_label; } ;
typedef TYPE_2__ ctf_lblent_t ;
struct TYPE_8__ {int ctb_strtab; } ;
typedef TYPE_3__ ctf_buf_t ;


 int SWAP_32 (int ) ;
 int ctf_buf_write (TYPE_3__*,TYPE_2__*,int) ;
 int strtab_insert (int *,int ) ;
 scalar_t__ target_requires_swap ;

__attribute__((used)) static int
write_label(void *arg1, void *arg2)
{
 labelent_t *le = arg1;
 ctf_buf_t *b = arg2;
 ctf_lblent_t ctl;

 ctl.ctl_label = strtab_insert(&b->ctb_strtab, le->le_name);
 ctl.ctl_typeidx = le->le_idx;

 if (target_requires_swap) {
  SWAP_32(ctl.ctl_label);
  SWAP_32(ctl.ctl_typeidx);
 }

 ctf_buf_write(b, &ctl, sizeof (ctl));

 return (1);
}
