
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int asn_len_t ;


 int asn_get_real_unsigned (struct asn_buf*,int ,int *) ;

enum asn_err
asn_get_counter64_raw(struct asn_buf *b, asn_len_t len, uint64_t *vp)
{
 return (asn_get_real_unsigned(b, len, vp));
}
