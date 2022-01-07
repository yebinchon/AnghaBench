
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sha512_context ;
typedef int br_sha384_context ;
typedef int br_sha256_context ;
typedef int br_sha224_context ;
typedef int br_sha1_context ;
typedef int br_md5_context ;


 int EXIT_FAILURE ;

 int br_md5_init (int *) ;
 int br_md5_out (int *,void*) ;
 int br_md5_update (int *,void const*,size_t) ;

 int br_sha1_init (int *) ;
 int br_sha1_out (int *,void*) ;
 int br_sha1_update (int *,void const*,size_t) ;

 int br_sha224_init (int *) ;
 int br_sha224_out (int *,void*) ;
 int br_sha224_update (int *,void const*,size_t) ;

 int br_sha256_init (int *) ;
 int br_sha256_out (int *,void*) ;
 int br_sha256_update (int *,void const*,size_t) ;

 int br_sha384_init (int *) ;
 int br_sha384_out (int *,void*) ;
 int br_sha384_update (int *,void const*,size_t) ;

 int br_sha512_init (int *) ;
 int br_sha512_out (int *,void*) ;
 int br_sha512_update (int *,void const*,size_t) ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static size_t
do_hash(int id, const void *data, size_t len, void *out)
{
 br_md5_context cmd5;
 br_sha1_context csha1;
 br_sha224_context csha224;
 br_sha256_context csha256;
 br_sha384_context csha384;
 br_sha512_context csha512;

 switch (id) {
 case 133:
  br_md5_init(&cmd5);
  br_md5_update(&cmd5, data, len);
  br_md5_out(&cmd5, out);
  return 16;
 case 132:
  br_sha1_init(&csha1);
  br_sha1_update(&csha1, data, len);
  br_sha1_out(&csha1, out);
  return 20;
 case 131:
  br_sha224_init(&csha224);
  br_sha224_update(&csha224, data, len);
  br_sha224_out(&csha224, out);
  return 28;
 case 130:
  br_sha256_init(&csha256);
  br_sha256_update(&csha256, data, len);
  br_sha256_out(&csha256, out);
  return 32;
 case 129:
  br_sha384_init(&csha384);
  br_sha384_update(&csha384, data, len);
  br_sha384_out(&csha384, out);
  return 48;
 case 128:
  br_sha512_init(&csha512);
  br_sha512_update(&csha512, data, len);
  br_sha512_out(&csha512, out);
  return 64;
 default:
  fprintf(stderr, "Uknown hash function: %d\n", id);
  exit(EXIT_FAILURE);
  return 0;
 }
}
