
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_CCLS_INCREMENT ;
 int* ccl_has_nl ;
 scalar_t__* ccllen ;
 scalar_t__* cclmap ;
 scalar_t__* cclng ;
 scalar_t__ current_maxccls ;
 scalar_t__ lastccl ;
 int num_reallocs ;
 int* reallocate_bool_array (int*,scalar_t__) ;
 scalar_t__* reallocate_integer_array (scalar_t__*,scalar_t__) ;

int cclinit ()
{
 if (++lastccl >= current_maxccls) {
  current_maxccls += MAX_CCLS_INCREMENT;

  ++num_reallocs;

  cclmap =
   reallocate_integer_array (cclmap, current_maxccls);
  ccllen =
   reallocate_integer_array (ccllen, current_maxccls);
  cclng = reallocate_integer_array (cclng, current_maxccls);
  ccl_has_nl =
   reallocate_bool_array (ccl_has_nl,
            current_maxccls);
 }

 if (lastccl == 1)

  cclmap[lastccl] = 0;

 else





  cclmap[lastccl] =
   cclmap[lastccl - 1] + ccllen[lastccl - 1];

 ccllen[lastccl] = 0;
 cclng[lastccl] = 0;
 ccl_has_nl[lastccl] = 0;

 return lastccl;
}
