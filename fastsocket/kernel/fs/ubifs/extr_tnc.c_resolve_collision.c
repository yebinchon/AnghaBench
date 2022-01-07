
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; TYPE_1__* zbranch; } ;
struct ubifs_info {int dummy; } ;
struct qstr {int dummy; } ;
struct TYPE_2__ {int key; } ;


 int EINVAL ;
 int ENOENT ;
 int NAME_GREATER ;
 int NAME_LESS ;
 int NAME_MATCHES ;
 scalar_t__ keys_cmp (struct ubifs_info*,int *,union ubifs_key const*) ;
 int matches_name (struct ubifs_info*,TYPE_1__*,struct qstr const*) ;
 int tnc_next (struct ubifs_info*,struct ubifs_znode**,int*) ;
 int tnc_prev (struct ubifs_info*,struct ubifs_znode**,int*) ;
 int ubifs_assert (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int resolve_collision(struct ubifs_info *c, const union ubifs_key *key,
        struct ubifs_znode **zn, int *n,
        const struct qstr *nm)
{
 int err;

 err = matches_name(c, &(*zn)->zbranch[*n], nm);
 if (unlikely(err < 0))
  return err;
 if (err == NAME_MATCHES)
  return 1;

 if (err == NAME_GREATER) {

  while (1) {
   err = tnc_prev(c, zn, n);
   if (err == -ENOENT) {
    ubifs_assert(*n == 0);
    *n = -1;
    return 0;
   }
   if (err < 0)
    return err;
   if (keys_cmp(c, &(*zn)->zbranch[*n].key, key)) {
    if (*n == (*zn)->child_cnt - 1) {
     err = tnc_next(c, zn, n);
     if (err) {

      ubifs_assert(0);
      if (err == -ENOENT)
       err = -EINVAL;
      return err;
     }
     ubifs_assert(*n == 0);
     *n = -1;
    }
    return 0;
   }
   err = matches_name(c, &(*zn)->zbranch[*n], nm);
   if (err < 0)
    return err;
   if (err == NAME_LESS)
    return 0;
   if (err == NAME_MATCHES)
    return 1;
   ubifs_assert(err == NAME_GREATER);
  }
 } else {
  int nn = *n;
  struct ubifs_znode *znode = *zn;


  while (1) {
   err = tnc_next(c, &znode, &nn);
   if (err == -ENOENT)
    return 0;
   if (err < 0)
    return err;
   if (keys_cmp(c, &znode->zbranch[nn].key, key))
    return 0;
   err = matches_name(c, &znode->zbranch[nn], nm);
   if (err < 0)
    return err;
   if (err == NAME_GREATER)
    return 0;
   *zn = znode;
   *n = nn;
   if (err == NAME_MATCHES)
    return 1;
   ubifs_assert(err == NAME_LESS);
  }
 }
}
