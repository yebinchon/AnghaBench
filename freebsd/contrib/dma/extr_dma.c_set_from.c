
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue {char* sender; } ;
struct TYPE_2__ {char* masquerade_user; char* masquerade_host; } ;


 int EINVAL ;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 TYPE_1__ config ;
 int errno ;
 char* getenv (char*) ;
 char* hostname () ;
 int * strchr (char const*,char) ;
 char* strdup (char const*) ;
 char* username ;

__attribute__((used)) static char *
set_from(struct queue *queue, const char *osender)
{
 const char *addr;
 char *sender;

 if (osender) {
  addr = osender;
 } else if (getenv("EMAIL") != ((void*)0)) {
  addr = getenv("EMAIL");
 } else {
  if (config.masquerade_user)
   addr = config.masquerade_user;
  else
   addr = username;
 }

 if (!strchr(addr, '@')) {
  const char *from_host = hostname();

  if (config.masquerade_host)
   from_host = config.masquerade_host;

  if (asprintf(&sender, "%s@%s", addr, from_host) <= 0)
   return (((void*)0));
 } else {
  sender = strdup(addr);
  if (sender == ((void*)0))
   return (((void*)0));
 }

 if (strchr(sender, '\n') != ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 queue->sender = sender;
 return (sender);
}
