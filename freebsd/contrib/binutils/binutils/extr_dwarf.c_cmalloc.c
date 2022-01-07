
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

void *
cmalloc (size_t nmemb, size_t size)
{

  if (nmemb >= ~(size_t) 0 / size)
    return ((void*)0);
  else
    return malloc (nmemb * size);
}
