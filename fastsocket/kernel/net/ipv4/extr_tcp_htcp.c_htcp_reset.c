
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htcp {int last_cong; int old_maxB; int undo_old_maxB; int maxRTT; int undo_maxRTT; int undo_last_cong; } ;


 int jiffies ;

__attribute__((used)) static inline void htcp_reset(struct htcp *ca)
{
 ca->undo_last_cong = ca->last_cong;
 ca->undo_maxRTT = ca->maxRTT;
 ca->undo_old_maxB = ca->old_maxB;

 ca->last_cong = jiffies;
}
