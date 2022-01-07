
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_datum {int value; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 char* kstrdup (char*,int ) ;

__attribute__((used)) static int get_classes_callback(void *k, void *d, void *args)
{
 struct class_datum *datum = d;
 char *name = k, **classes = args;
 int value = datum->value - 1;

 classes[value] = kstrdup(name, GFP_ATOMIC);
 if (!classes[value])
  return -ENOMEM;

 return 0;
}
