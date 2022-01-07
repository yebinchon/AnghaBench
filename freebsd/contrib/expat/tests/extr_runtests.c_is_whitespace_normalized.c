
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XML_Char ;


 scalar_t__ const XCS (char) ;

__attribute__((used)) static int
is_whitespace_normalized(const XML_Char *s, int is_cdata)
{
    int blanks = 0;
    int at_start = 1;
    while (*s) {
        if (*s == XCS(' '))
            ++blanks;
        else if (*s == XCS('\t') || *s == XCS('\n') || *s == XCS('\r'))
            return 0;
        else {
            if (at_start) {
                at_start = 0;
                if (blanks && !is_cdata)

                    return 0;
            }
            else if (blanks > 1 && !is_cdata)
                return 0;
            blanks = 0;
        }
        ++s;
    }
    if (blanks && !is_cdata)
        return 0;
    return 1;
}
