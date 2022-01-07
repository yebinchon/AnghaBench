
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {scalar_t__ b_blocknr; } ;


 int brelse (struct buffer_head*) ;
 int pr_debug (char*,long long) ;

__attribute__((used)) static inline void
affs_brelse(struct buffer_head *bh)
{
 if (bh)
  pr_debug("affs_brelse: %lld\n", (long long) bh->b_blocknr);
 brelse(bh);
}
