
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iuu_private {int writebuf; int dbgbuf; int buf; } ;


 int kfree (int ) ;

__attribute__((used)) static void iuu_free_buf(struct iuu_private *priv)
{
 kfree(priv->buf);
 kfree(priv->dbgbuf);
 kfree(priv->writebuf);
}
