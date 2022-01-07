
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t rate; size_t dptr; int A; scalar_t__ dbuf; } ;
typedef TYPE_1__ br_shake_context ;


 int memcpy (scalar_t__,unsigned char const*,size_t) ;
 int process_block (int ) ;
 int xor_block (int ,scalar_t__,size_t) ;

void
br_shake_inject(br_shake_context *sc, const void *data, size_t len)
{
 const unsigned char *buf;
 size_t rate, dptr;

 buf = data;
 rate = sc->rate;
 dptr = sc->dptr;
 while (len > 0) {
  size_t clen;

  clen = rate - dptr;
  if (clen > len) {
   clen = len;
  }
  memcpy(sc->dbuf + dptr, buf, clen);
  dptr += clen;
  buf += clen;
  len -= clen;
  if (dptr == rate) {
   xor_block(sc->A, sc->dbuf, rate);
   process_block(sc->A);
   dptr = 0;
  }
 }
 sc->dptr = dptr;
}
