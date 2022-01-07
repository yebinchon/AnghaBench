
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int unichar ;
struct bin_res_id {struct bin_res_id* id; struct bin_res_id* sig; } ;
typedef int rc_uint_type ;
struct TYPE_5__ {int* name; } ;
struct TYPE_6__ {int id; TYPE_1__ n; } ;
struct TYPE_7__ {TYPE_2__ u; int named; } ;
typedef TYPE_3__ rc_res_id ;
typedef struct bin_res_id bfd_byte ;


 int BIN_RES_ID ;
 scalar_t__ reswr_alloc (int) ;
 int set_windres_bfd_content (int *,struct bin_res_id*,int,int) ;
 int unichar_len (int*) ;
 int windres_put_16 (int *,struct bin_res_id*,int) ;

__attribute__((used)) static rc_uint_type
resid_to_bin (windres_bfd *wrbfd, rc_uint_type off, rc_res_id id)
{
  if (! id.named)
    {
      if (wrbfd)
 {
   struct bin_res_id bri;

   windres_put_16 (wrbfd, bri.sig, 0xffff);
   windres_put_16 (wrbfd, bri.id, id.u.id);
   set_windres_bfd_content (wrbfd, &bri, off, BIN_RES_ID);
 }
      off += BIN_RES_ID;
    }
  else
    {
      rc_uint_type len = (id.u.n.name ? unichar_len (id.u.n.name) : 0);
      if (wrbfd)
 {
   bfd_byte *d = (bfd_byte *) reswr_alloc ((len + 1) * sizeof (unichar));
   rc_uint_type i;
   for (i = 0; i < len; i++)
     windres_put_16 (wrbfd, d + (i * sizeof (unichar)), id.u.n.name[i]);
   windres_put_16 (wrbfd, d + (len * sizeof (unichar)), 0);
   set_windres_bfd_content (wrbfd, d, off, (len + 1) * sizeof (unichar));
    }
      off += (rc_uint_type) ((len + 1) * sizeof (unichar));
    }
  return off;
}
