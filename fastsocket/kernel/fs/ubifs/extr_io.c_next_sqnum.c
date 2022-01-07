
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {unsigned long long max_sqnum; int cnt_lock; } ;


 int EINVAL ;
 unsigned long long SQNUM_WARN_WATERMARK ;
 unsigned long long SQNUM_WATERMARK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_err (char*,unsigned long long) ;
 int ubifs_ro_mode (struct ubifs_info*,int ) ;
 int ubifs_warn (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long long next_sqnum(struct ubifs_info *c)
{
 unsigned long long sqnum;

 spin_lock(&c->cnt_lock);
 sqnum = ++c->max_sqnum;
 spin_unlock(&c->cnt_lock);

 if (unlikely(sqnum >= SQNUM_WARN_WATERMARK)) {
  if (sqnum >= SQNUM_WATERMARK) {
   ubifs_err("sequence number overflow %llu, end of life",
      sqnum);
   ubifs_ro_mode(c, -EINVAL);
  }
  ubifs_warn("running out of sequence numbers, end of life soon");
 }

 return sqnum;
}
