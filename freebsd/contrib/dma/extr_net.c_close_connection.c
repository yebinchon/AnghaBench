
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; int * ssl; } ;


 int NOSSL ;
 int SECURETRANS ;
 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int close (int) ;
 TYPE_1__ config ;

__attribute__((used)) static void
close_connection(int fd)
{
 if (config.ssl != ((void*)0)) {
  if (((config.features & SECURETRANS) != 0) &&
      ((config.features & NOSSL) == 0))
   SSL_shutdown(config.ssl);
  SSL_free(config.ssl);
 }

 close(fd);
}
