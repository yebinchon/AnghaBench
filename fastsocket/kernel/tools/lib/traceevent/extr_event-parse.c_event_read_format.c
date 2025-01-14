
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_common; int nr_fields; int fields; int common_fields; } ;
struct event_format {TYPE_1__ format; } ;


 int EVENT_ITEM ;
 int EVENT_NEWLINE ;
 int EVENT_OP ;
 int event_read_fields (struct event_format*,int *) ;
 int free_token (char*) ;
 scalar_t__ read_expect_type (int ,char**) ;
 scalar_t__ read_expected (int ,char*) ;
 scalar_t__ read_expected_item (int ,char*) ;

__attribute__((used)) static int event_read_format(struct event_format *event)
{
 char *token;
 int ret;

 if (read_expected_item(EVENT_ITEM, "format") < 0)
  return -1;

 if (read_expected(EVENT_OP, ":") < 0)
  return -1;

 if (read_expect_type(EVENT_NEWLINE, &token))
  goto fail;
 free_token(token);

 ret = event_read_fields(event, &event->format.common_fields);
 if (ret < 0)
  return ret;
 event->format.nr_common = ret;

 ret = event_read_fields(event, &event->format.fields);
 if (ret < 0)
  return ret;
 event->format.nr_fields = ret;

 return 0;

 fail:
 free_token(token);
 return -1;
}
