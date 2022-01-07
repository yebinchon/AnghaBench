
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int * skelqh; } ;
typedef int __le32 ;


 int LINK_TO_QH (int ) ;
 int UHCI_NUMFRAMES ;
 scalar_t__ __ffs (int) ;

__attribute__((used)) static __le32 uhci_frame_skel_link(struct uhci_hcd *uhci, int frame)
{
 int skelnum;
 skelnum = 8 - (int) __ffs(frame | UHCI_NUMFRAMES);
 if (skelnum <= 1)
  skelnum = 9;
 return LINK_TO_QH(uhci->skelqh[skelnum]);
}
