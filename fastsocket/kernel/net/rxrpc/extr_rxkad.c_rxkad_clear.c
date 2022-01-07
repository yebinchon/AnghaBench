
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {scalar_t__ cipher; } ;


 int _enter (char*) ;
 int crypto_free_blkcipher (scalar_t__) ;

__attribute__((used)) static void rxkad_clear(struct rxrpc_connection *conn)
{
 _enter("");

 if (conn->cipher)
  crypto_free_blkcipher(conn->cipher);
}
