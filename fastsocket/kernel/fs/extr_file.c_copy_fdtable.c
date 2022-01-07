
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fdtable {int max_fds; scalar_t__ close_on_exec; scalar_t__ open_fds; scalar_t__ fd; } ;


 unsigned int BITS_PER_BYTE ;
 int BUG_ON (int) ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;
 int memset (char*,int ,unsigned int) ;

__attribute__((used)) static void copy_fdtable(struct fdtable *nfdt, struct fdtable *ofdt)
{
 unsigned int cpy, set;

 BUG_ON(nfdt->max_fds < ofdt->max_fds);

 cpy = ofdt->max_fds * sizeof(struct file *);
 set = (nfdt->max_fds - ofdt->max_fds) * sizeof(struct file *);
 memcpy(nfdt->fd, ofdt->fd, cpy);
 memset((char *)(nfdt->fd) + cpy, 0, set);

 cpy = ofdt->max_fds / BITS_PER_BYTE;
 set = (nfdt->max_fds - ofdt->max_fds) / BITS_PER_BYTE;
 memcpy(nfdt->open_fds, ofdt->open_fds, cpy);
 memset((char *)(nfdt->open_fds) + cpy, 0, set);
 memcpy(nfdt->close_on_exec, ofdt->close_on_exec, cpy);
 memset((char *)(nfdt->close_on_exec) + cpy, 0, set);
}
