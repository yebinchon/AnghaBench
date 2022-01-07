; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_branch_target_load_optimize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_branch_target_load_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)*, i32 (i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NO_REGS = common dso_local global i32 0, align 4
@issue_rate = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@UPDATE_LIFE_GLOBAL_RM_NOTES = common dso_local global i32 0, align 4
@PROP_DEATH_NOTES = common dso_local global i32 0, align 4
@PROP_REG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @branch_target_load_optimize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0), align 8
  %5 = call i32 (...) %4()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NO_REGS, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 2, i32 0), align 8
  %11 = icmp ne i32 (...)* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 2, i32 0), align 8
  %14 = call i32 (...) %13()
  store i32 %14, i32* @issue_rate, align 4
  br label %16

15:                                               ; preds = %9
  store i32 1, i32* @issue_rate, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i64, i64* @optimize, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @cleanup_cfg(i32 %23)
  %25 = call i32 @life_analysis(i32 0)
  %26 = load i32, i32* @CDI_DOMINATORS, align 4
  %27 = call i32 @calculate_dominance_info(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 1), align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 %29(i32 %30)
  %32 = call i32 @migrate_btr_defs(i32 %28, i32 %31)
  %33 = load i32, i32* @CDI_DOMINATORS, align 4
  %34 = call i32 @free_dominance_info(i32 %33)
  %35 = load i32, i32* @UPDATE_LIFE_GLOBAL_RM_NOTES, align 4
  %36 = load i32, i32* @PROP_DEATH_NOTES, align 4
  %37 = load i32, i32* @PROP_REG_INFO, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @update_life_info(i32* null, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @life_analysis(i32) #1

declare dso_local i32 @calculate_dominance_info(i32) #1

declare dso_local i32 @migrate_btr_defs(i32, i32) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @update_life_info(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
