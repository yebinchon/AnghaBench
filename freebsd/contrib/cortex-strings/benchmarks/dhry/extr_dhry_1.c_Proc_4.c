
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int Bool_Glob ;
 char Ch_1_Glob ;
 char Ch_2_Glob ;

void Proc_4 ()


 {
   Boolean Bool_Loc;

   Bool_Loc = Ch_1_Glob == 'A';
   Bool_Glob = Bool_Loc | Bool_Glob;
   Ch_2_Glob = 'B';
 }
