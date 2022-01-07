
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rng_fake_ctx ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
rng_fake_update(rng_fake_ctx *cc, const void *src, size_t len)
{
 (void)cc;
 (void)src;
 (void)len;
 fprintf(stderr, "unexpected update\n");
 exit(EXIT_FAILURE);
}
