
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_interface {unsigned short if_sknum; int if_sklist_lock; } ;
typedef int __be16 ;


 unsigned short IPX_MAX_EPHEMERAL_SOCKET ;
 unsigned short IPX_MIN_EPHEMERAL_SOCKET ;
 scalar_t__ __ipxitf_find_socket (struct ipx_interface*,int ) ;
 int htons (unsigned short) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static __be16 ipx_first_free_socketnum(struct ipx_interface *intrfc)
{
 unsigned short socketNum = intrfc->if_sknum;

 spin_lock_bh(&intrfc->if_sklist_lock);

 if (socketNum < IPX_MIN_EPHEMERAL_SOCKET)
  socketNum = IPX_MIN_EPHEMERAL_SOCKET;

 while (__ipxitf_find_socket(intrfc, htons(socketNum)))
  if (socketNum > IPX_MAX_EPHEMERAL_SOCKET)
   socketNum = IPX_MIN_EPHEMERAL_SOCKET;
  else
   socketNum++;

 spin_unlock_bh(&intrfc->if_sklist_lock);
 intrfc->if_sknum = socketNum;

 return htons(socketNum);
}
