
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {void (* cleanup ) (struct subprocess_info*) ;int (* init ) (struct subprocess_info*) ;void* data; } ;



void call_usermodehelper_setfns(struct subprocess_info *info,
      int (*init)(struct subprocess_info *info),
      void (*cleanup)(struct subprocess_info *info),
      void *data)
{
 info->cleanup = cleanup;
 info->init = init;
 info->data = data;
}
