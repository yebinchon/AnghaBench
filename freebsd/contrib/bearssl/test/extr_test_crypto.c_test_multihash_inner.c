
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sha1_context ;
typedef int br_multihash_context ;


 int EXIT_FAILURE ;
 int br_multihash_init (int *) ;
 size_t br_multihash_out (int *,int,unsigned char*) ;
 int br_multihash_update (int *,unsigned char*,int) ;
 int br_sha1_init (int *) ;
 int br_sha1_out (int *,unsigned char*) ;
 int br_sha1_update (int *,unsigned char*,size_t) ;
 int check_equals (char*,unsigned char*,unsigned char*,size_t) ;
 size_t do_hash (int,unsigned char*,size_t,unsigned char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int,unsigned int) ;
 int stderr ;

__attribute__((used)) static int
test_multihash_inner(br_multihash_context *mc)
{






 size_t len;
 unsigned char buf[258];
 int i;
 int tcount;

 tcount = 0;
 for (len = 0; len < sizeof buf; len ++) {
  br_sha1_context sc;
  unsigned char tmp[20];

  br_sha1_init(&sc);
  br_sha1_update(&sc, buf, len);
  br_sha1_out(&sc, tmp);
  buf[len] = tmp[0];
 }
 for (len = 0; len <= 257; len ++) {
  size_t u;

  br_multihash_init(mc);
  br_multihash_update(mc, buf, len);
  for (i = 1; i <= 6; i ++) {
   unsigned char tmp[64], tmp2[64];
   size_t olen, olen2;

   olen = br_multihash_out(mc, i, tmp);
   if (olen == 0) {
    continue;
   }
   olen2 = do_hash(i, buf, len, tmp2);
   if (olen != olen2) {
    fprintf(stderr,
     "Bad hash output length: %u / %u\n",
     (unsigned)olen, (unsigned)olen2);
    exit(EXIT_FAILURE);
   }
   check_equals("Hash output", tmp, tmp2, olen);
   tcount ++;
  }

  br_multihash_init(mc);
  for (u = 0; u < len; u ++) {
   br_multihash_update(mc, buf + u, 1);
   for (i = 1; i <= 6; i ++) {
    unsigned char tmp[64], tmp2[64];
    size_t olen, olen2;

    olen = br_multihash_out(mc, i, tmp);
    if (olen == 0) {
     continue;
    }
    olen2 = do_hash(i, buf, u + 1, tmp2);
    if (olen != olen2) {
     fprintf(stderr, "Bad hash output"
      " length: %u / %u\n",
      (unsigned)olen,
      (unsigned)olen2);
     exit(EXIT_FAILURE);
    }
    check_equals("Hash output", tmp, tmp2, olen);
   }
  }
 }
 return tcount;
}
