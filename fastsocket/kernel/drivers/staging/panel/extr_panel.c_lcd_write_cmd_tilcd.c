
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pprt ;
 int pprt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 int w_ctr (int ,int) ;

__attribute__((used)) static void lcd_write_cmd_tilcd(int cmd)
{
 spin_lock(&pprt_lock);

 w_ctr(pprt, cmd);
 udelay(60);
 spin_unlock(&pprt_lock);
}
