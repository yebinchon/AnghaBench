
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_percpu_buf_dispatcher {int dentry; int buf; } ;


 int relay_set_buf_dentry (int ,int ) ;

__attribute__((used)) static void __relay_set_buf_dentry(void *info)
{
 struct rchan_percpu_buf_dispatcher *p = info;

 relay_set_buf_dentry(p->buf, p->dentry);
}
