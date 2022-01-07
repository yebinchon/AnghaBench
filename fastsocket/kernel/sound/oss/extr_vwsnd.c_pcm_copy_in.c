
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* hwbuf; char* swbuf; int sw_samplefmt; int swbuf_size; int hwbuf_size; } ;
typedef TYPE_1__ vwsnd_port_t ;


 int AFMT_A_LAW ;
 int AFMT_MU_LAW ;
 int AFMT_S8 ;
 int ASSERT (int) ;
 int DBGPV (char*,int,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void pcm_copy_in(vwsnd_port_t *rport, int swidx, int hwidx, int nb)
{
 char *src = rport->hwbuf + hwidx;
 char *dst = rport->swbuf + swidx;
 int fmt = rport->sw_samplefmt;

 DBGPV("swidx = %d, hwidx = %d\n", swidx, hwidx);
 ASSERT(rport->hwbuf != ((void*)0));
 ASSERT(rport->swbuf != ((void*)0));
 ASSERT(nb > 0 && (nb % 32) == 0);
 ASSERT(swidx % 32 == 0 && hwidx % 32 == 0);
 ASSERT(swidx >= 0 && swidx + nb <= rport->swbuf_size);
 ASSERT(hwidx >= 0 && hwidx + nb <= rport->hwbuf_size);

 if (fmt == AFMT_MU_LAW || fmt == AFMT_A_LAW || fmt == AFMT_S8) {



  char *end = src + nb;
  while (src < end)
   *dst++ = *src++ ^ 0x80;
 } else
  memcpy(dst, src, nb);
}
