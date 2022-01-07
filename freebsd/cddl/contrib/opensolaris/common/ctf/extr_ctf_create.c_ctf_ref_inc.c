
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ctf_id_t ;
struct TYPE_6__ {int ctf_flags; } ;
typedef TYPE_1__ ctf_file_t ;
struct TYPE_7__ {int dtd_ref; } ;
typedef TYPE_2__ ctf_dtdef_t ;


 int LCTF_RDWR ;
 TYPE_2__* ctf_dtd_lookup (TYPE_1__*,int ) ;

__attribute__((used)) static void
ctf_ref_inc(ctf_file_t *fp, ctf_id_t tid)
{
 ctf_dtdef_t *dtd = ctf_dtd_lookup(fp, tid);

 if (dtd == ((void*)0))
  return;

 if (!(fp->ctf_flags & LCTF_RDWR))
  return;

 dtd->dtd_ref++;
}
