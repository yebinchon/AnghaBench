
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int qhead; } ;


 int DeleteMidQEntry (struct mid_q_entry*) ;
 int GlobalMid_Lock ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
delete_mid(struct mid_q_entry *mid)
{
 spin_lock(&GlobalMid_Lock);
 list_del(&mid->qhead);
 spin_unlock(&GlobalMid_Lock);

 DeleteMidQEntry(mid);
}
