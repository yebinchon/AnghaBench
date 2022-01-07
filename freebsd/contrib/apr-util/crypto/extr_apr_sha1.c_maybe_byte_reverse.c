
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef int apr_byte_t ;


 scalar_t__ isLittleEndian () ;

__attribute__((used)) static void maybe_byte_reverse(apr_uint32_t *buffer, int count)
{
    int i;
    apr_byte_t ct[4], *cp;

    if (isLittleEndian()) {
 count /= sizeof(apr_uint32_t);
 cp = (apr_byte_t *) buffer;
 for (i = 0; i < count; ++i) {
     ct[0] = cp[0];
     ct[1] = cp[1];
     ct[2] = cp[2];
     ct[3] = cp[3];
     cp[0] = ct[3];
     cp[1] = ct[2];
     cp[2] = ct[1];
     cp[3] = ct[0];
     cp += sizeof(apr_uint32_t);
 }
    }
}
