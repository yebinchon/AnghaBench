
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;



__attribute__((used)) static inline unsigned char dt_type(struct inode *inode)
{
 return (inode->i_mode >> 12) & 15;
}
