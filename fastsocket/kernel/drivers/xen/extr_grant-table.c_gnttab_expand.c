
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int GREFS_PER_GRANT_FRAME ;
 int gnttab_map (unsigned int,unsigned int) ;
 unsigned int gnttab_max_grant_frames () ;
 int grow_gnttab_list (unsigned int) ;
 unsigned int nr_grant_frames ;

__attribute__((used)) static int gnttab_expand(unsigned int req_entries)
{
 int rc;
 unsigned int cur, extra;

 cur = nr_grant_frames;
 extra = ((req_entries + (GREFS_PER_GRANT_FRAME-1)) /
   GREFS_PER_GRANT_FRAME);
 if (cur + extra > gnttab_max_grant_frames())
  return -ENOSPC;

 rc = gnttab_map(cur, cur + extra - 1);
 if (rc == 0)
  rc = grow_gnttab_list(extra);

 return rc;
}
