
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;


 int digits_len (struct nf_conn const*,char const*,char const*,int*) ;
 int parse_addr (struct nf_conn const*,char const*,char const**,union nf_inet_addr*,char const*) ;
 int pr_debug (char*,char const*) ;

__attribute__((used)) static int epaddr_len(const struct nf_conn *ct, const char *dptr,
        const char *limit, int *shift)
{
 union nf_inet_addr addr;
 const char *aux = dptr;

 if (!parse_addr(ct, dptr, &dptr, &addr, limit)) {
  pr_debug("ip: %s parse failed.!\n", dptr);
  return 0;
 }


 if (*dptr == ':') {
  dptr++;
  dptr += digits_len(ct, dptr, limit, shift);
 }
 return dptr - aux;
}
