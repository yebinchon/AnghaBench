
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int outbin (char const*,int,struct output*) ;

__attribute__((used)) static int
doformat_wr(void *cookie, const char *buf, int len)
{
 struct output *o;

 o = (struct output *)cookie;
 outbin(buf, len, o);

 return (len);
}
