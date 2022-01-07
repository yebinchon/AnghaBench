
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ need_recovery; int replay_sqnum; } ;
struct replay_entry {int flags; int new_size; int key; int len; int offs; int lnum; int nm; int sqnum; } ;
typedef int ino_t ;


 int DBGKEY (int *) ;
 int REPLAY_DELETION ;
 int REPLAY_REF ;


 int dbg_mnt (char*,int ,int ,int ,int,int ,int ) ;
 scalar_t__ is_hash_key (struct ubifs_info*,int *) ;
 int key_inum (struct ubifs_info*,int *) ;
 int key_type (struct ubifs_info*,int *) ;
 int set_bud_lprops (struct ubifs_info*,struct replay_entry*) ;
 int trun_remove_range (struct ubifs_info*,struct replay_entry*) ;
 int ubifs_recover_size_accum (struct ubifs_info*,int *,int,int ) ;
 int ubifs_tnc_add (struct ubifs_info*,int *,int ,int ,int ) ;
 int ubifs_tnc_add_nm (struct ubifs_info*,int *,int ,int ,int ,int *) ;
 int ubifs_tnc_remove (struct ubifs_info*,int *) ;
 int ubifs_tnc_remove_ino (struct ubifs_info*,int ) ;
 int ubifs_tnc_remove_nm (struct ubifs_info*,int *,int *) ;

__attribute__((used)) static int apply_replay_entry(struct ubifs_info *c, struct replay_entry *r)
{
 int err, deletion = ((r->flags & REPLAY_DELETION) != 0);

 dbg_mnt("LEB %d:%d len %d flgs %d sqnum %llu %s", r->lnum,
  r->offs, r->len, r->flags, r->sqnum, DBGKEY(&r->key));


 c->replay_sqnum = r->sqnum;

 if (r->flags & REPLAY_REF)
  err = set_bud_lprops(c, r);
 else if (is_hash_key(c, &r->key)) {
  if (deletion)
   err = ubifs_tnc_remove_nm(c, &r->key, &r->nm);
  else
   err = ubifs_tnc_add_nm(c, &r->key, r->lnum, r->offs,
            r->len, &r->nm);
 } else {
  if (deletion)
   switch (key_type(c, &r->key)) {
   case 129:
   {
    ino_t inum = key_inum(c, &r->key);

    err = ubifs_tnc_remove_ino(c, inum);
    break;
   }
   case 128:
    err = trun_remove_range(c, r);
    break;
   default:
    err = ubifs_tnc_remove(c, &r->key);
    break;
   }
  else
   err = ubifs_tnc_add(c, &r->key, r->lnum, r->offs,
         r->len);
  if (err)
   return err;

  if (c->need_recovery)
   err = ubifs_recover_size_accum(c, &r->key, deletion,
             r->new_size);
 }

 return err;
}
