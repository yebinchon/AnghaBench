
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_context {int dummy; } ;


 int get_common_field (struct scripting_context*,int*,int*,char*) ;

int common_lock_depth(struct scripting_context *context)
{
 static int offset;
 static int size;
 int ret;

 ret = get_common_field(context, &size, &offset,
          "common_lock_depth");
 if (ret < 0)
  return -1;

 return ret;
}
