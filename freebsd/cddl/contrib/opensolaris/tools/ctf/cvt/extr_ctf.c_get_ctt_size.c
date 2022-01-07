
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ctt_size; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_stype_t ;


 size_t CTF_LSIZE_SENT ;
 scalar_t__ CTF_TYPE_LSIZE (TYPE_1__*) ;

__attribute__((used)) static void
get_ctt_size(ctf_type_t *ctt, size_t *sizep, size_t *incrementp)
{
 if (ctt->ctt_size == CTF_LSIZE_SENT) {
  *sizep = (size_t)CTF_TYPE_LSIZE(ctt);
  *incrementp = sizeof (ctf_type_t);
 } else {
  *sizep = ctt->ctt_size;
  *incrementp = sizeof (ctf_stype_t);
 }
}
