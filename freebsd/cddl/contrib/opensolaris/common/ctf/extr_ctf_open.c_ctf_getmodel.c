
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ctf_dmodel; } ;
typedef TYPE_2__ ctf_file_t ;
struct TYPE_4__ {int ctd_code; } ;



int
ctf_getmodel(ctf_file_t *fp)
{
 return (fp->ctf_dmodel->ctd_code);
}
