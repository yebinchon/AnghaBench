
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buffer ;


 int b ;
 int blacklist (int,int,char*) ;
 int blacklist_r (int ,int,int,char*) ;
 int err (int,char*) ;
 int exit (int ) ;
 char* getprogname () ;
 int memset (char*,int ,int) ;
 int printf (char*,char*,int,char*) ;
 int read (int,char*,int) ;

__attribute__((used)) static void
process_tcp(int afd)
{
 ssize_t n;
 char buffer[256];

 memset(buffer, 0, sizeof(buffer));

 if ((n = read(afd, buffer, sizeof(buffer))) == -1)
  err(1, "read");
 buffer[sizeof(buffer) - 1] = '\0';
 printf("%s: sending %d %s\n", getprogname(), afd, buffer);



 blacklist(1, afd, buffer);

 exit(0);
}
