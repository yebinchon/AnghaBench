
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int MC2_UPLD_DEBI ;
 int MC_ENABLE (int ,int ) ;
 int MC_TEST (int ,int ) ;
 int PSR_DEBI_S ;
 int P_MC2 ;
 int P_PSR ;
 int RR7146 (int ) ;

__attribute__((used)) static void DEBItransfer(struct comedi_device *dev)
{

 MC_ENABLE(P_MC2, MC2_UPLD_DEBI);



 while (!MC_TEST(P_MC2, MC2_UPLD_DEBI)) ;


 while (RR7146(P_PSR) & PSR_DEBI_S) ;
}
