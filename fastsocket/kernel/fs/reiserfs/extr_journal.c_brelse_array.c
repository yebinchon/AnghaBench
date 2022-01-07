
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int brelse (struct buffer_head*) ;

__attribute__((used)) static void brelse_array(struct buffer_head **heads, int num)
{
 int i;
 for (i = 0; i < num; i++) {
  brelse(heads[i]);
 }
}
