
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* linep ;

__attribute__((used)) static void
skipbl(void)
{
 while (*linep == ' ' || *linep == '\t')
  linep++;
}
