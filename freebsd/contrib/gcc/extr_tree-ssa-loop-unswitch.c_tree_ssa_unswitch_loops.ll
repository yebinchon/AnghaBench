; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_tree_ssa_unswitch_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_tree_ssa_unswitch_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i64 }

@TODO_cleanup_cfg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_ssa_unswitch_loops(%struct.loops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.loops*, %struct.loops** %3, align 8
  %9 = getelementptr inbounds %struct.loops, %struct.loops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load %struct.loops*, %struct.loops** %3, align 8
  %17 = getelementptr inbounds %struct.loops, %struct.loops* %16, i32 0, i32 1
  %18 = load %struct.loop**, %struct.loop*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.loop*, %struct.loop** %18, i64 %20
  %22 = load %struct.loop*, %struct.loop** %21, align 8
  store %struct.loop* %22, %struct.loop** %6, align 8
  %23 = load %struct.loop*, %struct.loop** %6, align 8
  %24 = icmp ne %struct.loop* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %38

26:                                               ; preds = %15
  %27 = load %struct.loop*, %struct.loop** %6, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %38

32:                                               ; preds = %26
  %33 = load %struct.loops*, %struct.loops** %3, align 8
  %34 = load %struct.loop*, %struct.loop** %6, align 8
  %35 = call i32 @tree_unswitch_single_loop(%struct.loops* %33, %struct.loop* %34, i32 0)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %32, %31, %25
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @TODO_cleanup_cfg, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @tree_unswitch_single_loop(%struct.loops*, %struct.loop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
