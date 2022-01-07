
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int flags; } ;


 int MAGIC_APPLE ;
 int MAGIC_EXTENSION ;
 int MAGIC_MIME ;
 int MAGIC_MIME_TYPE ;
 int file_printf (struct magic_set*,char*,...) ;

int
file_default(struct magic_set *ms, size_t nb)
{
 if (ms->flags & MAGIC_MIME) {
  if ((ms->flags & MAGIC_MIME_TYPE) &&
      file_printf(ms, "application/%s",
   nb ? "octet-stream" : "x-empty") == -1)
   return -1;
  return 1;
 }
 if (ms->flags & MAGIC_APPLE) {
  if (file_printf(ms, "UNKNUNKN") == -1)
   return -1;
  return 1;
 }
 if (ms->flags & MAGIC_EXTENSION) {
  if (file_printf(ms, "???") == -1)
   return -1;
  return 1;
 }
 return 0;
}
