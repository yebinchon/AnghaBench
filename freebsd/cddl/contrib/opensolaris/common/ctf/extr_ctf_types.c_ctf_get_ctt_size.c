
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {scalar_t__ ctt_size; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_stype_t ;
struct TYPE_7__ {scalar_t__ ctf_version; } ;
typedef TYPE_2__ ctf_file_t ;


 scalar_t__ CTF_LSIZE_SENT ;
 int CTF_TYPE_LSIZE (TYPE_1__ const*) ;
 scalar_t__ CTF_VERSION_1 ;

ssize_t
ctf_get_ctt_size(const ctf_file_t *fp, const ctf_type_t *tp, ssize_t *sizep,
    ssize_t *incrementp)
{
 ssize_t size, increment;

 if (fp->ctf_version > CTF_VERSION_1 &&
     tp->ctt_size == CTF_LSIZE_SENT) {
  size = CTF_TYPE_LSIZE(tp);
  increment = sizeof (ctf_type_t);
 } else {
  size = tp->ctt_size;
  increment = sizeof (ctf_stype_t);
 }

 if (sizep)
  *sizep = size;
 if (incrementp)
  *incrementp = increment;

 return (size);
}
