
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ushort_t ;
struct TYPE_5__ {int ctt_info; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_member_t ;
typedef int ctf_lmember_t ;
struct TYPE_6__ {scalar_t__ cth_typeoff; scalar_t__ cth_stroff; } ;
typedef TYPE_2__ ctf_header_t ;
typedef int ctf_enum_t ;
typedef int ctf_array_t ;
typedef scalar_t__ caddr_t ;


 int CTF_INFO_KIND (int ) ;
 size_t CTF_INFO_VLEN (int ) ;
 size_t CTF_LSTRUCT_THRESH ;
 int debug (int,char*,int) ;
 int get_ctt_size (TYPE_1__*,size_t*,size_t*) ;
 int parseterminate (char*,int,int,scalar_t__) ;

__attribute__((used)) static int
count_types(ctf_header_t *h, caddr_t data)
{
 caddr_t dptr = data + h->cth_typeoff;
 int count = 0;

 dptr = data + h->cth_typeoff;
 while (dptr < data + h->cth_stroff) {
  void *v = (void *) dptr;
  ctf_type_t *ctt = v;
  size_t vlen = CTF_INFO_VLEN(ctt->ctt_info);
  size_t size, increment;

  get_ctt_size(ctt, &size, &increment);

  switch (CTF_INFO_KIND(ctt->ctt_info)) {
  case 135:
  case 138:
   dptr += 4;
   break;
  case 134:
  case 137:
  case 131:
  case 128:
  case 140:
  case 133:
  case 136:
   dptr += sizeof (ushort_t) * (vlen + (vlen & 1));
   break;
  case 141:
   dptr += sizeof (ctf_array_t);
   break;
  case 132:
  case 130:
   if (size < CTF_LSTRUCT_THRESH)
    dptr += sizeof (ctf_member_t) * vlen;
   else
    dptr += sizeof (ctf_lmember_t) * vlen;
   break;
  case 139:
   dptr += sizeof (ctf_enum_t) * vlen;
   break;
  case 129:
   break;
  default:
   parseterminate("Unknown CTF type %d (#%d) at %#x",
       CTF_INFO_KIND(ctt->ctt_info), count, dptr - data);
  }

  dptr += increment;
  count++;
 }

 debug(3, "CTF read %d types\n", count);

 return (count);
}
