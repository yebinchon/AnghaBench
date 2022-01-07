; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_do_tree_profiling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_do_tree_profiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@profile_arc_flag = common dso_local global i64 0, align 8
@flag_test_coverage = common dso_local global i64 0, align 8
@flag_branch_probabilities = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_tree_profiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tree_profiling() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @profile_arc_flag, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @flag_test_coverage, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @flag_branch_probabilities, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %4, %0
  %11 = call i32 (...) @tree_register_profile_hooks()
  %12 = call i32 (...) @tree_register_value_prof_hooks()
  store i32 1, i32* %1, align 4
  br label %14

13:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @tree_register_profile_hooks(...) #1

declare dso_local i32 @tree_register_value_prof_hooks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
