
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct getdents_callback {scalar_t__ ino; char* name; int found; int sequence; } ;
typedef int loff_t ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int filldir_one(void * __buf, const char * name, int len,
   loff_t pos, u64 ino, unsigned int d_type)
{
 struct getdents_callback *buf = __buf;
 int result = 0;

 buf->sequence++;
 if (buf->ino == ino) {
  memcpy(buf->name, name, len);
  buf->name[len] = '\0';
  buf->found = 1;
  result = -1;
 }
 return result;
}
