
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ushort_t ;
struct TYPE_5__ {char* ii_name; TYPE_1__* ii_dtype; } ;
typedef TYPE_2__ iidesc_t ;
typedef int id ;
typedef int ctf_buf_t ;
struct TYPE_4__ {int t_id; } ;


 int SWAP_16 (int ) ;
 int ctf_buf_write (int *,int *,int) ;
 int debug (int,char*,char*,int ) ;
 scalar_t__ target_requires_swap ;

__attribute__((used)) static void
write_objects(iidesc_t *idp, ctf_buf_t *b)
{
 ushort_t id = (idp ? idp->ii_dtype->t_id : 0);

 if (target_requires_swap) {
  SWAP_16(id);
 }

 ctf_buf_write(b, &id, sizeof (id));

 debug(3, "Wrote object %s (%d)\n", (idp ? idp->ii_name : "(null)"), id);
}
