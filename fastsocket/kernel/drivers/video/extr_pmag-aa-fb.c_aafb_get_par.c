
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aafb_par {int dummy; } ;


 struct aafb_par current_par ;

__attribute__((used)) static void aafb_get_par(struct aafb_par *par)
{
 *par = current_par;
}
