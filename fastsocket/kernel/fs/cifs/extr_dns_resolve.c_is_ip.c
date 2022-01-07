
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;


 int cifs_convert_address (struct sockaddr*,char const*,int) ;

__attribute__((used)) static int
is_ip(const char *name, int len)
{
 struct sockaddr_storage ss;

 return cifs_convert_address((struct sockaddr *)&ss, name, len);
}
