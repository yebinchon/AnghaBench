
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ushort_t ;
typedef size_t ulong_t ;
typedef int uint_t ;
struct TYPE_7__ {char* cts_strs; scalar_t__ cts_len; } ;
typedef TYPE_1__ ctf_strs_t ;
struct TYPE_8__ {int h_next; scalar_t__ h_type; int h_name; } ;
typedef TYPE_2__ ctf_helem_t ;
struct TYPE_9__ {size_t h_free; size_t h_nelems; size_t h_nbuckets; int * h_buckets; TYPE_2__* h_chains; } ;
typedef TYPE_3__ ctf_hash_t ;
struct TYPE_10__ {TYPE_1__* ctf_str; } ;
typedef TYPE_4__ ctf_file_t ;


 scalar_t__ CTF_NAME_OFFSET (int ) ;
 size_t CTF_NAME_STID (int ) ;
 int ECTF_BADNAME ;
 int ECTF_STRTAB ;
 int EINVAL ;
 int EOVERFLOW ;
 size_t ctf_hash_compute (char const*,int ) ;
 int strlen (char const*) ;

int
ctf_hash_insert(ctf_hash_t *hp, ctf_file_t *fp, ushort_t type, uint_t name)
{
 ctf_strs_t *ctsp = &fp->ctf_str[CTF_NAME_STID(name)];
 const char *str = ctsp->cts_strs + CTF_NAME_OFFSET(name);
 ctf_helem_t *hep = &hp->h_chains[hp->h_free];
 ulong_t h;

 if (type == 0)
  return (EINVAL);

 if (hp->h_free >= hp->h_nelems)
  return (EOVERFLOW);

 if (ctsp->cts_strs == ((void*)0))
  return (ECTF_STRTAB);

 if (ctsp->cts_len <= CTF_NAME_OFFSET(name))
  return (ECTF_BADNAME);

 if (str[0] == '\0')
  return (0);

 hep->h_name = name;
 hep->h_type = type;
 h = ctf_hash_compute(str, strlen(str)) % hp->h_nbuckets;
 hep->h_next = hp->h_buckets[h];
 hp->h_buckets[h] = hp->h_free++;

 return (0);
}
