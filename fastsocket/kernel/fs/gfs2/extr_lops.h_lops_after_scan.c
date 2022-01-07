
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_jdesc {int dummy; } ;
struct TYPE_2__ {int (* lo_after_scan ) (struct gfs2_jdesc*,int,unsigned int) ;scalar_t__ lo_before_scan; } ;


 TYPE_1__** gfs2_log_ops ;
 int stub1 (struct gfs2_jdesc*,int,unsigned int) ;

__attribute__((used)) static inline void lops_after_scan(struct gfs2_jdesc *jd, int error,
       unsigned int pass)
{
 int x;
 for (x = 0; gfs2_log_ops[x]; x++)
  if (gfs2_log_ops[x]->lo_before_scan)
   gfs2_log_ops[x]->lo_after_scan(jd, error, pass);
}
