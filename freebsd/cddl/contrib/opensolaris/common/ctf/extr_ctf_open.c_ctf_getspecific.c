
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ctf_specific; } ;
typedef TYPE_1__ ctf_file_t ;



void *
ctf_getspecific(ctf_file_t *fp)
{
 return (fp->ctf_specific);
}
