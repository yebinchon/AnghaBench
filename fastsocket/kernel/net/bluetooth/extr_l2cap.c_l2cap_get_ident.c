
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_conn {int tx_ident; int lock; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline u8 l2cap_get_ident(struct l2cap_conn *conn)
{
 u8 id;







 spin_lock_bh(&conn->lock);

 if (++conn->tx_ident > 128)
  conn->tx_ident = 1;

 id = conn->tx_ident;

 spin_unlock_bh(&conn->lock);

 return id;
}
