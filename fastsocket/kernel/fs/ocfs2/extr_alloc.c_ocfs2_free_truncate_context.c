
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * c_first_suballocator; } ;
struct ocfs2_truncate_context {int tc_last_eb_bh; TYPE_1__ tc_dealloc; } ;


 int ML_NOTICE ;
 int brelse (int ) ;
 int kfree (struct ocfs2_truncate_context*) ;
 int mlog (int ,char*) ;

__attribute__((used)) static void ocfs2_free_truncate_context(struct ocfs2_truncate_context *tc)
{




 if (tc->tc_dealloc.c_first_suballocator != ((void*)0))
  mlog(ML_NOTICE,
       "Truncate completion has non-empty dealloc context\n");

 brelse(tc->tc_last_eb_bh);

 kfree(tc);
}
