
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_type {int size; int * fetch; } ;
struct fetch_param {void* data; int fn; } ;
struct bitfield_fetch_param {unsigned long hi_shift; unsigned long low_shift; struct fetch_param orig; } ;


 unsigned long BYTES_TO_BITS (int ) ;
 int EINVAL ;
 int ENOMEM ;
 size_t FETCH_MTD_bitfield ;
 int GFP_KERNEL ;
 struct bitfield_fetch_param* kzalloc (int,int ) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static int __parse_bitfield_probe_arg(const char *bf,
          const struct fetch_type *t,
          struct fetch_param *f)
{
 struct bitfield_fetch_param *bprm;
 unsigned long bw, bo;
 char *tail;

 if (*bf != 'b')
  return 0;

 bprm = kzalloc(sizeof(*bprm), GFP_KERNEL);
 if (!bprm)
  return -ENOMEM;
 bprm->orig = *f;
 f->fn = t->fetch[FETCH_MTD_bitfield];
 f->data = (void *)bprm;

 bw = simple_strtoul(bf + 1, &tail, 0);
 if (bw == 0 || *tail != '@')
  return -EINVAL;

 bf = tail + 1;
 bo = simple_strtoul(bf, &tail, 0);
 if (tail == bf || *tail != '/')
  return -EINVAL;

 bprm->hi_shift = BYTES_TO_BITS(t->size) - (bw + bo);
 bprm->low_shift = bprm->hi_shift + bo;
 return (BYTES_TO_BITS(t->size) < (bw + bo)) ? -EINVAL : 0;
}
