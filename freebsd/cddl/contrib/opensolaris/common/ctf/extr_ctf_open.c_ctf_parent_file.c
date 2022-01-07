
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ctf_parent; } ;
typedef TYPE_1__ ctf_file_t ;



ctf_file_t *
ctf_parent_file(ctf_file_t *fp)
{
 return (fp->ctf_parent);
}
