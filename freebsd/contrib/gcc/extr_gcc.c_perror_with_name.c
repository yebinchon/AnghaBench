
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (char*,char const*,char*) ;
 char* xstrerror (int ) ;

__attribute__((used)) static void
perror_with_name (const char *name)
{
  error ("%s: %s", name, xstrerror (errno));
}
