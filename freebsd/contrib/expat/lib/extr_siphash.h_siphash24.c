
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sipkey {int dummy; } ;
struct siphash {int dummy; } ;


 struct siphash SIPHASH_INITIALIZER ;
 int sip24_final (int ) ;
 int sip24_init (struct siphash*,struct sipkey const*) ;
 int sip24_update (int ,void const*,size_t) ;

__attribute__((used)) static uint64_t siphash24(const void *src, size_t len,
  const struct sipkey *key) {
 struct siphash state = SIPHASH_INITIALIZER;
 return sip24_final(sip24_update(sip24_init(&state, key), src, len));
}
