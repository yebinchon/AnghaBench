; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_profile.c_init_branch_prob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_profile.c_init_branch_prob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@total_num_blocks = common dso_local global i64 0, align 8
@total_num_edges = common dso_local global i64 0, align 8
@total_num_edges_ignored = common dso_local global i64 0, align 8
@total_num_edges_instrumented = common dso_local global i64 0, align 8
@total_num_blocks_created = common dso_local global i64 0, align 8
@total_num_passes = common dso_local global i64 0, align 8
@total_num_times_called = common dso_local global i64 0, align 8
@total_num_branches = common dso_local global i64 0, align 8
@total_num_never_executed = common dso_local global i64 0, align 8
@total_hist_br_prob = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_branch_prob() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @total_num_blocks, align 8
  store i64 0, i64* @total_num_edges, align 8
  store i64 0, i64* @total_num_edges_ignored, align 8
  store i64 0, i64* @total_num_edges_instrumented, align 8
  store i64 0, i64* @total_num_blocks_created, align 8
  store i64 0, i64* @total_num_passes, align 8
  store i64 0, i64* @total_num_times_called, align 8
  store i64 0, i64* @total_num_branches, align 8
  store i64 0, i64* @total_num_never_executed, align 8
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 20
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load i64*, i64** @total_hist_br_prob, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
