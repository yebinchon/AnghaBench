
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int QImode ;
 int thumb_base_register_rtx_p (int ,int ,int) ;

__attribute__((used)) inline static int
thumb_index_register_rtx_p (rtx x, int strict_p)
{
  return thumb_base_register_rtx_p (x, QImode, strict_p);
}
