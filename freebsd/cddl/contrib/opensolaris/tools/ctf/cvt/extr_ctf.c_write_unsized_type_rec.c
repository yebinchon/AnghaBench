
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ctf_type_t ;
struct TYPE_3__ {int ctt_size; int ctt_info; int ctt_name; } ;
typedef TYPE_1__ ctf_stype_t ;
typedef int ctf_buf_t ;


 int SWAP_16 (int ) ;
 int SWAP_32 (int ) ;
 int ctf_buf_write (int *,TYPE_1__*,int) ;
 scalar_t__ target_requires_swap ;

__attribute__((used)) static void
write_unsized_type_rec(ctf_buf_t *b, ctf_type_t *ctt)
{
 ctf_stype_t *cts = (ctf_stype_t *)ctt;

 if (target_requires_swap) {
  SWAP_32(cts->ctt_name);
  SWAP_16(cts->ctt_info);
  SWAP_16(cts->ctt_size);
 }

 ctf_buf_write(b, cts, sizeof (*cts));
}
