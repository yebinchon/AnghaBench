
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int ssize_t ;
struct TYPE_6__ {int ctt_info; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_7__ {int cte_bits; int cte_offset; int cte_format; } ;
typedef TYPE_2__ ctf_encoding_t ;


 int CTF_ERR ;
 int CTF_FP_BITS (int ) ;
 int CTF_FP_ENCODING (int ) ;
 int CTF_FP_OFFSET (int ) ;
 int CTF_INT_BITS (int ) ;
 int CTF_INT_ENCODING (int ) ;
 int CTF_INT_OFFSET (int ) ;


 int ECTF_NOTINTFP ;
 int LCTF_INFO_KIND (int *,int ) ;
 int ctf_get_ctt_size (int *,TYPE_1__ const*,int *,int *) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_set_errno (int *,int ) ;

int
ctf_type_encoding(ctf_file_t *fp, ctf_id_t type, ctf_encoding_t *ep)
{
 ctf_file_t *ofp = fp;
 const ctf_type_t *tp;
 ssize_t increment;
 uint_t data;

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (CTF_ERR);

 (void) ctf_get_ctt_size(fp, tp, ((void*)0), &increment);

 switch (LCTF_INFO_KIND(fp, tp->ctt_info)) {
 case 128:
  data = *(const uint_t *)((uintptr_t)tp + increment);
  ep->cte_format = CTF_INT_ENCODING(data);
  ep->cte_offset = CTF_INT_OFFSET(data);
  ep->cte_bits = CTF_INT_BITS(data);
  break;
 case 129:
  data = *(const uint_t *)((uintptr_t)tp + increment);
  ep->cte_format = CTF_FP_ENCODING(data);
  ep->cte_offset = CTF_FP_OFFSET(data);
  ep->cte_bits = CTF_FP_BITS(data);
  break;
 default:
  return (ctf_set_errno(ofp, ECTF_NOTINTFP));
 }

 return (0);
}
