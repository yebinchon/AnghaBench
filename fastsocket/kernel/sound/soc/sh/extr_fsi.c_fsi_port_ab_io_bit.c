
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;


 int fsi_is_port_a (struct fsi_priv*) ;

__attribute__((used)) static u32 fsi_port_ab_io_bit(struct fsi_priv *fsi, int is_play)
{
 int is_porta = fsi_is_port_a(fsi);
 u32 data;

 if (is_porta)
  data = is_play ? (1 << 0) : (1 << 4);
 else
  data = is_play ? (1 << 8) : (1 << 12);

 return data;
}
