
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int log_last; } ;


 int UBIFS_LOG_LNUM ;

__attribute__((used)) static inline int next_log_lnum(const struct ubifs_info *c, int lnum)
{
 lnum += 1;
 if (lnum > c->log_last)
  lnum = UBIFS_LOG_LNUM;

 return lnum;
}
