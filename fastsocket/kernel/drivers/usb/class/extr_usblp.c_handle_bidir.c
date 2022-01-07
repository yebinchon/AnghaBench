
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int sleeping; scalar_t__ used; scalar_t__ bidir; } ;


 int EIO ;
 scalar_t__ usblp_submit_read (struct usblp*) ;

__attribute__((used)) static int handle_bidir (struct usblp *usblp)
{
 if (usblp->bidir && usblp->used && !usblp->sleeping) {
  if (usblp_submit_read(usblp) < 0)
   return -EIO;
 }
 return 0;
}
