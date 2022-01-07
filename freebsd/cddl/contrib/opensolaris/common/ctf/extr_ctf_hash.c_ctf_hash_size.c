
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_3__ {scalar_t__ h_nelems; } ;
typedef TYPE_1__ ctf_hash_t ;



uint_t
ctf_hash_size(const ctf_hash_t *hp)
{
 return (hp->h_nelems ? hp->h_nelems - 1 : 0);
}
