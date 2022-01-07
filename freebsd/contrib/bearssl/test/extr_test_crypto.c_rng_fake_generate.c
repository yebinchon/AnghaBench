
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; size_t ptr; size_t buf; } ;
typedef TYPE_1__ rng_fake_ctx ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int memcpy (void*,size_t,size_t) ;
 int stderr ;

__attribute__((used)) static void
rng_fake_generate(rng_fake_ctx *cc, void *dst, size_t len)
{
 if (len > (cc->len - cc->ptr)) {
  fprintf(stderr, "asking for more data than expected\n");
  exit(EXIT_FAILURE);
 }
 memcpy(dst, cc->buf + cc->ptr, len);
 cc->ptr += len;
}
