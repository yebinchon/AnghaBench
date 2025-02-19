; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_tree_profiling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_tree_profiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_branch_probabilities = common dso_local global i64 0, align 8
@flag_profile_values = common dso_local global i64 0, align 8
@flag_value_profile_transformations = common dso_local global i64 0, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tree_profiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_profiling() #0 {
  %1 = call i32 (...) @branch_prob()
  %2 = load i64, i64* @flag_branch_probabilities, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i64, i64* @flag_profile_values, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i64, i64* @flag_value_profile_transformations, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @value_profile_transformations()
  br label %12

12:                                               ; preds = %10, %7, %4, %0
  %13 = load i32, i32* @CDI_DOMINATORS, align 4
  %14 = call i32 @free_dominance_info(i32 %13)
  %15 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %16 = call i32 @free_dominance_info(i32 %15)
  ret i32 0
}

declare dso_local i32 @branch_prob(...) #1

declare dso_local i32 @value_profile_transformations(...) #1

declare dso_local i32 @free_dominance_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
