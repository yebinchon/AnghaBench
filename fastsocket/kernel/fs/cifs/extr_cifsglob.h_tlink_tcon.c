
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {struct cifs_tcon* tl_tcon; } ;
struct cifs_tcon {int dummy; } ;



__attribute__((used)) static inline struct cifs_tcon *
tlink_tcon(struct tcon_link *tlink)
{
 return tlink->tl_tcon;
}
