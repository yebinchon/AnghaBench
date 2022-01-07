
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_query_join_request {int dummy; } ;
struct dlm_cancel_join {int dummy; } ;
struct dlm_assert_joined {int dummy; } ;


 int DLM_ASSERT_JOINED_MSG ;
 int DLM_CANCEL_JOIN_MSG ;
 int DLM_MOD_KEY ;
 int DLM_QUERY_JOIN_MSG ;
 int dlm_assert_joined_handler ;
 int dlm_cancel_join_handler ;
 int dlm_join_handlers ;
 int dlm_query_join_handler ;
 int dlm_unregister_net_handlers () ;
 int o2net_register_handler (int ,int ,int,int ,int *,int *,int *) ;

__attribute__((used)) static int dlm_register_net_handlers(void)
{
 int status = 0;

 status = o2net_register_handler(DLM_QUERY_JOIN_MSG, DLM_MOD_KEY,
     sizeof(struct dlm_query_join_request),
     dlm_query_join_handler,
     ((void*)0), ((void*)0), &dlm_join_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_ASSERT_JOINED_MSG, DLM_MOD_KEY,
     sizeof(struct dlm_assert_joined),
     dlm_assert_joined_handler,
     ((void*)0), ((void*)0), &dlm_join_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_CANCEL_JOIN_MSG, DLM_MOD_KEY,
     sizeof(struct dlm_cancel_join),
     dlm_cancel_join_handler,
     ((void*)0), ((void*)0), &dlm_join_handlers);

bail:
 if (status < 0)
  dlm_unregister_net_handlers();

 return status;
}
