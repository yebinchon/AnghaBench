
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dptr; int rate; int* dbuf; int A; } ;
typedef TYPE_1__ br_shake_context ;


 int memset (int*,int,int) ;
 int xor_block (int ,int*,int) ;

void
br_shake_flip(br_shake_context *sc)
{





 if ((sc->dptr + 1) == sc->rate) {
  sc->dbuf[sc->dptr ++] = 0x9F;
 } else {
  sc->dbuf[sc->dptr ++] = 0x1F;
  memset(sc->dbuf + sc->dptr, 0x00, sc->rate - sc->dptr - 1);
  sc->dbuf[sc->rate - 1] = 0x80;
  sc->dptr = sc->rate;
 }
 xor_block(sc->A, sc->dbuf, sc->rate);
}
