#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ boolean_e ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_int32_t ;

/* Variables and functions */
 int EXPONENT_LENGTH ; 
 int FALSE ; 
 int NDIG ; 
 char* FUNC0 (double,int,int*,int*,char*) ; 
 char* FUNC1 (double,int,int*,int*,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int,int*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static char *FUNC6(register char format, register double num,
    boolean_e add_dp, int precision, int *is_negative,
    char *buf, apr_size_t *len)
{
    register char *s = buf;
    register char *p;
    int decimal_point;
    char buf1[NDIG];

    if (format == 'f')
        p = FUNC1(num, precision, &decimal_point, is_negative, buf1);
    else /* either e or E format */
        p = FUNC0(num, precision + 1, &decimal_point, is_negative, buf1);

    /*
     * Check for Infinity and NaN
     */
    if (FUNC2(*p)) {
        *len = FUNC5(p);
        FUNC4(buf, p, *len + 1);
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

    /*
     * copy the rest of p, the NUL is NOT copied
     */
    while (*p)
        *s++ = *p++;

    if (format != 'f') {
        char temp[EXPONENT_LENGTH];        /* for exponent conversion */
        apr_size_t t_len;
        int exponent_is_negative;

        *s++ = format;                /* either e or E */
        decimal_point--;
        if (decimal_point != 0) {
            p = FUNC3((apr_int32_t) decimal_point, FALSE, &exponent_is_negative,
                        &temp[EXPONENT_LENGTH], &t_len);
            *s++ = exponent_is_negative ? '-' : '+';

            /*
             * Make sure the exponent has at least 2 digits
             */
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