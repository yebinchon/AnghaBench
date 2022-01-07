
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int dummy; } ;


 int mipid_transfer (struct mipid_device*,int,int *,int ,int *,int ) ;

__attribute__((used)) static inline void mipid_cmd(struct mipid_device *md, int cmd)
{
 mipid_transfer(md, cmd, ((void*)0), 0, ((void*)0), 0);
}
