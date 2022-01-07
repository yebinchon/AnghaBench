
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 scalar_t__ B_LEVEL (struct buffer_head const*) ;
 scalar_t__ FREE_LEVEL ;
 scalar_t__ MAX_HEIGHT ;
 int RFALSE (int,char*,struct buffer_head const*,struct buffer_head const*) ;

inline int B_IS_IN_TREE(const struct buffer_head *bh)
{

 RFALSE(B_LEVEL(bh) > MAX_HEIGHT,
        "PAP-1010: block (%b) has too big level (%z)", bh, bh);

 return (B_LEVEL(bh) != FREE_LEVEL);
}
