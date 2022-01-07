
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; int old_lc_ctype; int c_lc_ctype; int rx; } ;
typedef TYPE_1__ file_regex_t ;


 int LC_CTYPE ;
 int freelocale (int ) ;
 int regfree (int *) ;
 int setlocale (int ,int ) ;
 int uselocale (int ) ;

void
file_regfree(file_regex_t *rx)
{
 if (rx->rc == 0)
  regfree(&rx->rx);




 (void)setlocale(LC_CTYPE, rx->old_lc_ctype);

}
