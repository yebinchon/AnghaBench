
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_FILE_DIRTY ;
 int NR_UNSTABLE_NFS ;
 int get_dirty_limits (unsigned long*,unsigned long*,int *,int *) ;
 unsigned long global_page_state (int ) ;

__attribute__((used)) static inline bool over_bground_thresh(void)
{
 unsigned long background_thresh, dirty_thresh;

 get_dirty_limits(&background_thresh, &dirty_thresh, ((void*)0), ((void*)0));

 return (global_page_state(NR_FILE_DIRTY) +
  global_page_state(NR_UNSTABLE_NFS) >= background_thresh);
}
