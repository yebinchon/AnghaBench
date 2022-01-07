
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ctf_parname; } ;
typedef TYPE_1__ ctf_file_t ;



const char *
ctf_parent_name(ctf_file_t *fp)
{
 return (fp->ctf_parname);
}
