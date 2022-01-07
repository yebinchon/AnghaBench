
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct mibrcvaddr {int flags; } ;
struct mibif {scalar_t__ physaddrlen; int * physaddr; int index; } ;


 int MIBRCVADDR_HW ;
 int free (int *) ;
 scalar_t__ memcmp (int *,int *,scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 struct mibrcvaddr* mib_find_rcvaddr (int ,int *,scalar_t__) ;
 struct mibrcvaddr* mib_rcvaddr_create (struct mibif*,int *,scalar_t__) ;
 int mib_rcvaddr_delete (struct mibrcvaddr*) ;
 int * realloc (int *,scalar_t__) ;

__attribute__((used)) static void
get_physaddr(struct mibif *ifp, struct sockaddr_dl *sdl, u_char *ptr)
{
 u_char *np;
 struct mibrcvaddr *rcv;

 if (sdl->sdl_alen == 0) {

  if (ifp->physaddrlen != 0) {
   if ((rcv = mib_find_rcvaddr(ifp->index, ifp->physaddr,
       ifp->physaddrlen)) != ((void*)0))
    mib_rcvaddr_delete(rcv);
   free(ifp->physaddr);
   ifp->physaddr = ((void*)0);
   ifp->physaddrlen = 0;
  }
  return;
 }

 if (ifp->physaddrlen != sdl->sdl_alen) {

  if (ifp->physaddrlen) {

   if ((rcv = mib_find_rcvaddr(ifp->index, ifp->physaddr,
       ifp->physaddrlen)) != ((void*)0))
    mib_rcvaddr_delete(rcv);
  }
  if ((np = realloc(ifp->physaddr, sdl->sdl_alen)) == ((void*)0)) {
   free(ifp->physaddr);
   ifp->physaddr = ((void*)0);
   ifp->physaddrlen = 0;
   return;
  }
  ifp->physaddr = np;
  ifp->physaddrlen = sdl->sdl_alen;

 } else if (memcmp(ifp->physaddr, ptr, ifp->physaddrlen) == 0) {

  return;

 } else {



  if ((rcv = mib_find_rcvaddr(ifp->index, ifp->physaddr,
      ifp->physaddrlen)) != ((void*)0))
   mib_rcvaddr_delete(rcv);
 }

 memcpy(ifp->physaddr, ptr, ifp->physaddrlen);


 if ((rcv = mib_rcvaddr_create(ifp, ifp->physaddr, ifp->physaddrlen)) != ((void*)0))
  rcv->flags |= MIBRCVADDR_HW;
}
