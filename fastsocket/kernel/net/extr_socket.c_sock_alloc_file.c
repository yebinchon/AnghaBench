
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct socket {struct file* file; } ;
struct qstr {char* name; } ;
struct path {TYPE_4__* dentry; int mnt; } ;
struct file {int f_flags; struct socket* private_data; scalar_t__ f_pos; } ;
struct TYPE_11__ {int * i_fop; } ;
struct TYPE_10__ {TYPE_1__* d_inode; int d_flags; int * d_op; } ;
struct TYPE_9__ {int mnt_sb; } ;
struct TYPE_8__ {int i_count; } ;


 int DCACHE_UNHASHED ;
 int ENFILE ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_NONBLOCK ;
 int O_RDWR ;
 TYPE_5__* SOCK_INODE (struct socket*) ;
 struct file* alloc_file (struct path*,int,int *) ;
 int atomic_inc (int *) ;
 TYPE_4__* d_alloc_pseudo (int ,struct qstr*) ;
 int d_instantiate (TYPE_4__*,TYPE_5__*) ;
 int get_unused_fd_flags (int) ;
 int mntget (TYPE_2__*) ;
 int path_put (struct path*) ;
 int put_unused_fd (int) ;
 TYPE_2__* sock_mnt ;
 int socket_file_ops ;
 int sockfs_dentry_operations ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sock_alloc_file(struct socket *sock, struct file **f, int flags)
{
 struct qstr name = { .name = "" };
 struct path path;
 struct file *file;
 int fd;

 fd = get_unused_fd_flags(flags);
 if (unlikely(fd < 0))
  return fd;

 path.dentry = d_alloc_pseudo(sock_mnt->mnt_sb, &name);
 if (unlikely(!path.dentry)) {
  put_unused_fd(fd);
  return -ENOMEM;
 }
 path.mnt = mntget(sock_mnt);

 path.dentry->d_op = &sockfs_dentry_operations;





 path.dentry->d_flags &= ~DCACHE_UNHASHED;
 d_instantiate(path.dentry, SOCK_INODE(sock));
 SOCK_INODE(sock)->i_fop = &socket_file_ops;

 file = alloc_file(&path, FMODE_READ | FMODE_WRITE,
    &socket_file_ops);
 if (unlikely(!file)) {

  atomic_inc(&path.dentry->d_inode->i_count);
  path_put(&path);
  put_unused_fd(fd);
  return -ENFILE;
 }

 sock->file = file;
 file->f_flags = O_RDWR | (flags & O_NONBLOCK);
 file->f_pos = 0;
 file->private_data = sock;

 *f = file;
 return fd;
}
