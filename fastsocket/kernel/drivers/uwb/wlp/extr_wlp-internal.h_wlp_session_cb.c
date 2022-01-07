
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlp {TYPE_1__* session; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {struct completion* cb_priv; } ;


 int complete (struct completion*) ;

__attribute__((used)) static inline
void wlp_session_cb(struct wlp *wlp)
{
 struct completion *completion = wlp->session->cb_priv;
 complete(completion);
}
