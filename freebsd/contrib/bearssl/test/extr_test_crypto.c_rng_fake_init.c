
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; scalar_t__ ptr; int buf; int * vtable; } ;
typedef TYPE_1__ rng_fake_ctx ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned long) ;
 int memcpy (int ,void const*,size_t) ;
 int rng_fake_vtable ;
 int stderr ;

__attribute__((used)) static void
rng_fake_init(rng_fake_ctx *cc, const void *params,
 const void *seed, size_t len)
{
 (void)params;
 if (len > sizeof cc->buf) {
  fprintf(stderr, "seed is too large (%lu bytes)\n",
   (unsigned long)len);
  exit(EXIT_FAILURE);
 }
 cc->vtable = &rng_fake_vtable;
 memcpy(cc->buf, seed, len);
 cc->ptr = 0;
 cc->len = len;
}
