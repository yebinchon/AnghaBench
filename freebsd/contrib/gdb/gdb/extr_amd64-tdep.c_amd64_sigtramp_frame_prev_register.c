
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int amd64_frame_prev_register (struct frame_info*,void**,int,int*,int*,int *,int*,void*) ;
 int amd64_sigtramp_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static void
amd64_sigtramp_frame_prev_register (struct frame_info *next_frame,
        void **this_cache,
        int regnum, int *optimizedp,
        enum lval_type *lvalp, CORE_ADDR *addrp,
        int *realnump, void *valuep)
{

  amd64_sigtramp_frame_cache (next_frame, this_cache);

  amd64_frame_prev_register (next_frame, this_cache, regnum,
        optimizedp, lvalp, addrp, realnump, valuep);
}
