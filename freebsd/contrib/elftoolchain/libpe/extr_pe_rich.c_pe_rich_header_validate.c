
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {char* pe_rh_start; char* pe_stub; TYPE_1__* pe_rh; } ;
struct TYPE_5__ {scalar_t__ rh_total; unsigned char* rh_compid; int* rh_cnt; scalar_t__ rh_xor; } ;
typedef TYPE_1__ PE_RichHdr ;
typedef TYPE_2__ PE ;


 int assert (int ) ;
 int * pe_rich_header (TYPE_2__*) ;
 scalar_t__ rol32 (unsigned char,int) ;

int
pe_rich_header_validate(PE *pe)
{
 PE_RichHdr *rh;
 uint32_t cksum;
 char *p;
 int i, off;

 if (pe_rich_header(pe) == ((void*)0))
  return (-1);

 assert(pe->pe_rh_start != ((void*)0));





 cksum = pe->pe_rh_start - pe->pe_stub;





 for (p = pe->pe_stub; p < pe->pe_rh_start; p++) {

  off = p - pe->pe_stub;
  if (off >= 0x3c && off < 0x40)
   continue;
  cksum += rol32((unsigned char) *p, off);
 }


 rh = pe->pe_rh;
 for (i = 0; (uint32_t) i < rh->rh_total; i++)
  cksum += rol32(rh->rh_compid[i], rh->rh_cnt[i]);


 if (cksum == rh->rh_xor)
  return (1);

 return (0);
}
