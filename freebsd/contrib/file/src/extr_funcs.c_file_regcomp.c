
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* pat; int rc; int rx; int * old_lc_ctype; int * c_lc_ctype; } ;
typedef TYPE_1__ file_regex_t ;


 int LC_CTYPE ;
 int LC_CTYPE_MASK ;
 int assert (int ) ;
 int * newlocale (int ,char*,int ) ;
 int regcomp (int *,char const*,int) ;
 int * setlocale (int ,char*) ;
 int * uselocale (int *) ;

int
file_regcomp(file_regex_t *rx, const char *pat, int flags)
{






 rx->old_lc_ctype = setlocale(LC_CTYPE, "C");

 rx->pat = pat;

 return rx->rc = regcomp(&rx->rx, pat, flags);
}
