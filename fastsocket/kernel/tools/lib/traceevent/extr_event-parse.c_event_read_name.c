
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_ITEM ;
 int EVENT_OP ;
 int free_token (char*) ;
 scalar_t__ read_expect_type (int ,char**) ;
 scalar_t__ read_expected (int ,char*) ;

__attribute__((used)) static char *event_read_name(void)
{
 char *token;

 if (read_expected(EVENT_ITEM, "name") < 0)
  return ((void*)0);

 if (read_expected(EVENT_OP, ":") < 0)
  return ((void*)0);

 if (read_expect_type(EVENT_ITEM, &token) < 0)
  goto fail;

 return token;

 fail:
 free_token(token);
 return ((void*)0);
}
