
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctf_errno; } ;
typedef TYPE_1__ ctf_file_t ;


 long CTF_ERR ;

long
ctf_set_errno(ctf_file_t *fp, int err)
{
 fp->ctf_errno = err;
 return (CTF_ERR);
}
