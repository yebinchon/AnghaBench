
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* swbuf; char* hwbuf; int sw_samplefmt; int swbuf_size; int hwbuf_size; } ;
typedef TYPE_1__ vwsnd_port_t ;


 int AFMT_A_LAW ;
 int AFMT_MU_LAW ;
 int AFMT_S8 ;
 int ASSERT (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void pcm_copy_out(vwsnd_port_t *wport, int swidx, int hwidx, int nb)
{
 char *src = wport->swbuf + swidx;
 char *dst = wport->hwbuf + hwidx;
 int fmt = wport->sw_samplefmt;

 ASSERT(nb > 0 && (nb % 32) == 0);
 ASSERT(wport->hwbuf != ((void*)0));
 ASSERT(wport->swbuf != ((void*)0));
 ASSERT(swidx % 32 == 0 && hwidx % 32 == 0);
 ASSERT(swidx >= 0 && swidx + nb <= wport->swbuf_size);
 ASSERT(hwidx >= 0 && hwidx + nb <= wport->hwbuf_size);
 if (fmt == AFMT_MU_LAW || fmt == AFMT_A_LAW || fmt == AFMT_S8) {



  char *end = src + nb;
  while (src < end)
   *dst++ = *src++ ^ 0x80;
 } else
  memcpy(dst, src, nb);
}
