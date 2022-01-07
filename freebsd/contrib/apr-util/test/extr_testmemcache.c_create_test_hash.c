
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_HASH_KEY_STRING ;
 int TDATA_SIZE ;
 int apr_hash_set (int *,char*,int ,char*) ;
 int apr_itoa (int *,int) ;
 char* apr_pstrcat (int *,int ,int ,int *) ;
 char* apr_pstrndup (int *,int ,int ) ;
 int prefix ;
 int randval (int ) ;
 scalar_t__ strlen (int ) ;
 int txt ;

__attribute__((used)) static int create_test_hash(apr_pool_t *p, apr_hash_t *h)
{
  int i;

  for (i = 0; i < TDATA_SIZE; i++) {
    char *k, *v;

    k = apr_pstrcat(p, prefix, apr_itoa(p, i), ((void*)0));
    v = apr_pstrndup(p, txt, randval((apr_uint32_t)strlen(txt)));

    apr_hash_set(h, k, APR_HASH_KEY_STRING, v);
  }

  return i;
}
