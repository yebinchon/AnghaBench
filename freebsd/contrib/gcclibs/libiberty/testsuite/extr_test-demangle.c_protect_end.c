
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 size_t getpagesize () ;
 int memcpy (char*,char const*,size_t) ;
 char* mmap (int *,size_t,int,int,int,int ) ;
 int munmap (char*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *
protect_end (const char * s)
{
  return s;

}
