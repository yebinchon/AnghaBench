
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {struct lwp_info* next; int ptid; } ;
typedef int ptid_t ;


 int gdb_assert (int ) ;
 int is_lwp (int ) ;
 struct lwp_info* lwp_list ;
 int memset (struct lwp_info*,int ,int) ;
 int num_lwps ;
 int threaded ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct lwp_info *
add_lwp (ptid_t ptid)
{
  struct lwp_info *lp;

  gdb_assert (is_lwp (ptid));

  lp = (struct lwp_info *) xmalloc (sizeof (struct lwp_info));

  memset (lp, 0, sizeof (struct lwp_info));

  lp->ptid = ptid;

  lp->next = lwp_list;
  lwp_list = lp;
  if (++num_lwps > 1)
    threaded = 1;

  return lp;
}
