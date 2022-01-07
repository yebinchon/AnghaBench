
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_addr; struct addrinfo* ai_next; } ;


 int free (struct addrinfo*) ;

void
freeaddrinfo(struct addrinfo *p)
{
 struct addrinfo *next;

 while (p != ((void*)0)) {
  next = p->ai_next;
  if (p->ai_addr != ((void*)0))
   free(p->ai_addr);
  free(p);
  p = next;
 }
}
