
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef int apr_size_t ;
typedef scalar_t__ apr_int32_t ;


 int FALSE ;

__attribute__((used)) static char *conv_10(register apr_int32_t num, register int is_unsigned,
                     register int *is_negative, char *buf_end,
                     register apr_size_t *len)
{
    register char *p = buf_end;
    register apr_uint32_t magnitude = num;

    if (is_unsigned) {
        *is_negative = FALSE;
    }
    else {
        *is_negative = (num < 0);
        if (*is_negative) {
            apr_int32_t t = num + 1;
            magnitude = ((apr_uint32_t) -t) + 1;
        }
    }




    do {
        register apr_uint32_t new_magnitude = magnitude / 10;

        *--p = (char) (magnitude - new_magnitude * 10 + '0');
        magnitude = new_magnitude;
    }
    while (magnitude);

    *len = buf_end - p;
    return (p);
}
