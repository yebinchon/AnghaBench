
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * c; } ;
typedef TYPE_1__ jacobian ;
struct TYPE_11__ {int* p; } ;
typedef TYPE_2__ curve_params ;


 int br_i15_encode (unsigned char*,size_t,int ) ;
 int code_affine ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int run_code (TYPE_1__*,TYPE_1__*,TYPE_2__ const*,int ) ;
 int set_one (int ,int*) ;

__attribute__((used)) static void
point_encode(void *dst, const jacobian *P, const curve_params *cc)
{
 unsigned char *buf;
 size_t plen;
 jacobian Q, T;

 buf = dst;
 plen = (cc->p[0] - (cc->p[0] >> 4) + 7) >> 3;
 buf[0] = 0x04;
 memcpy(&Q, P, sizeof *P);
 set_one(T.c[2], cc->p);
 run_code(&Q, &T, cc, code_affine);
 br_i15_encode(buf + 1, plen, Q.c[0]);
 br_i15_encode(buf + 1 + plen, plen, Q.c[1]);
}
