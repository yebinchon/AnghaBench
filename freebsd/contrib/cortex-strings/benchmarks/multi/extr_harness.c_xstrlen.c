
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPOIL (int ) ;
 int strlen (void*) ;

__attribute__((used)) static void xstrlen(void *dest, void *src, size_t n)
{
  SPOIL(strlen(dest));
}
