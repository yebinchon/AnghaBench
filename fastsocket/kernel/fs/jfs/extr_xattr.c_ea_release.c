
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ea_buffer {int flag; int new_ea; int mp; int xattr; } ;


 int EA_EXTENT ;
 int EA_MALLOC ;
 int EA_NEW ;
 int addressDXD (int *) ;
 int assert (int ) ;
 int dbFree (struct inode*,int ,int ) ;
 int kfree (int ) ;
 int lengthDXD (int *) ;
 int release_metapage (int ) ;

__attribute__((used)) static void ea_release(struct inode *inode, struct ea_buffer *ea_buf)
{
 if (ea_buf->flag & EA_MALLOC)
  kfree(ea_buf->xattr);
 else if (ea_buf->flag & EA_EXTENT) {
  assert(ea_buf->mp);
  release_metapage(ea_buf->mp);

  if (ea_buf->flag & EA_NEW)
   dbFree(inode, addressDXD(&ea_buf->new_ea),
          lengthDXD(&ea_buf->new_ea));
 }
}
