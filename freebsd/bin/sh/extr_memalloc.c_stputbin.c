
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKSTRSPACE (size_t,char*) ;
 int memcpy (char*,char const*,size_t) ;

char *
stputbin(const char *data, size_t len, char *p)
{
 CHECKSTRSPACE(len, p);
 memcpy(p, data, len);
 return (p + len);
}
