
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 scalar_t__ ERANGE ;
 int FALSE ;
 int TRUE ;
 scalar_t__ errno ;
 double strtod (char*,char**) ;
 unsigned long strtoul (char*,char**,int) ;

__attribute__((used)) static Boolean
CondCvtArg(char *str, double *value)
{
    char *eptr, ech;
    unsigned long l_val;
    double d_val;

    errno = 0;
    if (!*str) {
 *value = (double)0;
 return TRUE;
    }
    l_val = strtoul(str, &eptr, str[1] == 'x' ? 16 : 10);
    ech = *eptr;
    if (ech == 0 && errno != ERANGE) {
 d_val = str[0] == '-' ? -(double)-l_val : (double)l_val;
    } else {
 if (ech != 0 && ech != '.' && ech != 'e' && ech != 'E')
     return FALSE;
 d_val = strtod(str, &eptr);
 if (*eptr)
     return FALSE;
    }

    *value = d_val;
    return TRUE;
}
