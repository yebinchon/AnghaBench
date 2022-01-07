
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPOIL (int ) ;
 int strcmp (void*,void*) ;

__attribute__((used)) static void xstrcmp(void *dest, void *src, size_t n)
{
  SPOIL(strcmp(dest, src));
}
