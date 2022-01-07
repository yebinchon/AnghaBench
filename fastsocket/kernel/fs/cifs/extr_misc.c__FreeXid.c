
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GlobalMid_Lock ;
 int GlobalTotalActiveXid ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
_FreeXid(unsigned int xid)
{
 spin_lock(&GlobalMid_Lock);


 GlobalTotalActiveXid--;
 spin_unlock(&GlobalMid_Lock);
}
