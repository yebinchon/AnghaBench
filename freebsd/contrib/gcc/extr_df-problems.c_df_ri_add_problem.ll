; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_ri_add_problem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_ri_add_problem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32 }
%struct.df = type { i32 }

@problem_RI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dataflow* @df_ri_add_problem(%struct.df* %0, i32 %1) #0 {
  %3 = alloca %struct.df*, align 8
  %4 = alloca i32, align 4
  store %struct.df* %0, %struct.df** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.df*, %struct.df** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.dataflow* @df_add_problem(%struct.df* %5, i32* @problem_RI, i32 %6)
  ret %struct.dataflow* %7
}

declare dso_local %struct.dataflow* @df_add_problem(%struct.df*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
