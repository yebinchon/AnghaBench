
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key {int dummy; } ;


 int KEY_ALLOC_IN_QUOTA ;
 struct key* request_key_and_link (struct key_type*,char const*,void const*,size_t,int *,int *,int ) ;

struct key *request_key_async(struct key_type *type,
         const char *description,
         const void *callout_info,
         size_t callout_len)
{
 return request_key_and_link(type, description, callout_info,
        callout_len, ((void*)0), ((void*)0),
        KEY_ALLOC_IN_QUOTA);
}
