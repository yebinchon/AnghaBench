
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPOIL (int ) ;
 int strcpy (void*,void*) ;

__attribute__((used)) static void xstrcpy(void *dest, void *src, size_t n)
{
  SPOIL(strcpy(dest, src));
}
