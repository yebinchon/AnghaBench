
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;


 int lzc_send_resume (char const*,char const*,int,int,int ,int ) ;

int
lzc_send(const char *snapname, const char *from, int fd,
    enum lzc_send_flags flags)
{
 return (lzc_send_resume(snapname, from, fd, flags, 0, 0));
}
