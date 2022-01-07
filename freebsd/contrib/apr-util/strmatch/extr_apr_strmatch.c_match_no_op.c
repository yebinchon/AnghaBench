
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_strmatch_pattern ;
typedef int apr_size_t ;



__attribute__((used)) static const char *match_no_op(const apr_strmatch_pattern *this_pattern,
                               const char *s, apr_size_t slen)
{
    return s;
}
