
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; char* pattern; scalar_t__ context; } ;
typedef TYPE_1__ apr_strmatch_pattern ;
typedef int apr_size_t ;



__attribute__((used)) static const char *match_boyer_moore_horspool(
                               const apr_strmatch_pattern *this_pattern,
                               const char *s, apr_size_t slen)
{
    const char *s_end = s + slen;
    apr_size_t *shift = (apr_size_t *)(this_pattern->context);
    const char *s_next = s + this_pattern->length - 1;
    const char *p_start = this_pattern->pattern;
    const char *p_end = p_start + this_pattern->length - 1;
    while (s_next < s_end) {
        const char *s_tmp = s_next;
        const char *p_tmp = p_end;
        while (*s_tmp == *p_tmp) {
            p_tmp--;
            if (p_tmp < p_start) {
                return s_tmp;
            }
            s_tmp--;
        }
        s_next += shift[(int)*((const unsigned char *)s_next)];
    }
    return ((void*)0);
}
