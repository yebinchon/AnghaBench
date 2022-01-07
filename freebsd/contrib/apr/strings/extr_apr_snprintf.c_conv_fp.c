
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_e ;
typedef int apr_size_t ;
typedef int apr_int32_t ;


 int EXPONENT_LENGTH ;
 int FALSE ;
 int NDIG ;
 char* apr_ecvt (double,int,int*,int*,char*) ;
 char* apr_fcvt (double,int,int*,int*,char*) ;
 scalar_t__ apr_isalpha (char) ;
 char* conv_10 (int ,int,int*,char*,int*) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *conv_fp(register char format, register double num,
    boolean_e add_dp, int precision, int *is_negative,
    char *buf, apr_size_t *len)
{
    register char *s = buf;
    register char *p;
    int decimal_point;
    char buf1[NDIG];

    if (format == 'f')
        p = apr_fcvt(num, precision, &decimal_point, is_negative, buf1);
    else
        p = apr_ecvt(num, precision + 1, &decimal_point, is_negative, buf1);




    if (apr_isalpha(*p)) {
        *len = strlen(p);
        memcpy(buf, p, *len + 1);
        *is_negative = FALSE;
        return (buf);
    }

    if (format == 'f') {
        if (decimal_point <= 0) {
            *s++ = '0';
            if (precision > 0) {
                *s++ = '.';
                while (decimal_point++ < 0)
                    *s++ = '0';
            }
            else if (add_dp)
                *s++ = '.';
        }
        else {
            while (decimal_point-- > 0)
                *s++ = *p++;
            if (precision > 0 || add_dp)
                *s++ = '.';
        }
    }
    else {
        *s++ = *p++;
        if (precision > 0 || add_dp)
            *s++ = '.';
    }




    while (*p)
        *s++ = *p++;

    if (format != 'f') {
        char temp[EXPONENT_LENGTH];
        apr_size_t t_len;
        int exponent_is_negative;

        *s++ = format;
        decimal_point--;
        if (decimal_point != 0) {
            p = conv_10((apr_int32_t) decimal_point, FALSE, &exponent_is_negative,
                        &temp[EXPONENT_LENGTH], &t_len);
            *s++ = exponent_is_negative ? '-' : '+';




            if (t_len == 1)
                *s++ = '0';
            while (t_len--)
                *s++ = *p++;
        }
        else {
            *s++ = '+';
            *s++ = '0';
            *s++ = '0';
        }
    }

    *len = s - buf;
    return (buf);
}
