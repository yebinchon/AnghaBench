
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rll_cv; int rll_lock; scalar_t__ rll_readers; int * rll_writer; } ;
typedef TYPE_1__ rll_t ;


 int USYNC_THREAD ;
 int cv_init (int *,int *,int ,int *) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static void
ztest_rll_init(rll_t *rll)
{
 rll->rll_writer = ((void*)0);
 rll->rll_readers = 0;
 mutex_init(&rll->rll_lock, ((void*)0), USYNC_THREAD, ((void*)0));
 cv_init(&rll->rll_cv, ((void*)0), USYNC_THREAD, ((void*)0));
}
