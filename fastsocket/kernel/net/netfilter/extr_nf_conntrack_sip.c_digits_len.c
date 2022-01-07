
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 scalar_t__ isdigit (char const) ;

__attribute__((used)) static int digits_len(const struct nf_conn *ct, const char *dptr,
        const char *limit, int *shift)
{
 int len = 0;
 while (dptr < limit && isdigit(*dptr)) {
  dptr++;
  len++;
 }
 return len;
}
