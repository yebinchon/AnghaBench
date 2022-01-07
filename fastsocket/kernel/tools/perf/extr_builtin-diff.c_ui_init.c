
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;



 int PERF_HPP__BASELINE ;
 int PERF_HPP__DELTA ;
 int PERF_HPP__DISPL ;
 int PERF_HPP__FORMULA ;
 int PERF_HPP__OVERHEAD ;
 int PERF_HPP__PERIOD ;
 int PERF_HPP__PERIOD_BASELINE ;
 int PERF_HPP__RATIO ;
 int PERF_HPP__WEIGHTED_DIFF ;
 int compute ;
 int perf_hpp__column_enable (int ,int) ;
 int perf_hpp__init () ;
 scalar_t__ show_displacement ;
 scalar_t__ show_formula ;
 scalar_t__ show_period ;

__attribute__((used)) static void ui_init(void)
{
 perf_hpp__init();


 perf_hpp__column_enable(PERF_HPP__OVERHEAD, 0);





 perf_hpp__column_enable(PERF_HPP__BASELINE, 1);

 switch (compute) {
 case 130:
  perf_hpp__column_enable(PERF_HPP__DELTA, 1);
  break;
 case 129:
  perf_hpp__column_enable(PERF_HPP__RATIO, 1);
  break;
 case 128:
  perf_hpp__column_enable(PERF_HPP__WEIGHTED_DIFF, 1);
  break;
 default:
  BUG_ON(1);
 };

 if (show_displacement)
  perf_hpp__column_enable(PERF_HPP__DISPL, 1);

 if (show_formula)
  perf_hpp__column_enable(PERF_HPP__FORMULA, 1);

 if (show_period) {
  perf_hpp__column_enable(PERF_HPP__PERIOD, 1);
  perf_hpp__column_enable(PERF_HPP__PERIOD_BASELINE, 1);
 }
}
