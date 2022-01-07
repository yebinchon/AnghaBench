
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct go7007* device_data; } ;
struct go7007 {scalar_t__ ref_count; struct go7007* snd_context; } ;


 int kfree (struct go7007*) ;

__attribute__((used)) static int go7007_snd_free(struct snd_device *device)
{
 struct go7007 *go = device->device_data;

 kfree(go->snd_context);
 go->snd_context = ((void*)0);
 if (--go->ref_count == 0)
  kfree(go);
 return 0;
}
