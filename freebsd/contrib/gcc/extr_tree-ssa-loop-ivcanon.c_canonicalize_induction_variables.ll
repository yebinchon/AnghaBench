; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_canonicalize_induction_variables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_canonicalize_induction_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i32 }

@UL_SINGLE_ITER = common dso_local global i32 0, align 4
@TODO_cleanup_cfg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @canonicalize_induction_variables(%struct.loops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.loops*, %struct.loops** %3, align 8
  %10 = getelementptr inbounds %struct.loops, %struct.loops* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = load %struct.loops*, %struct.loops** %3, align 8
  %15 = getelementptr inbounds %struct.loops, %struct.loops* %14, i32 0, i32 1
  %16 = load %struct.loop**, %struct.loop*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.loop*, %struct.loop** %16, i64 %18
  %20 = load %struct.loop*, %struct.loop** %19, align 8
  store %struct.loop* %20, %struct.loop** %5, align 8
  %21 = load %struct.loop*, %struct.loop** %5, align 8
  %22 = icmp ne %struct.loop* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.loops*, %struct.loops** %3, align 8
  %25 = load %struct.loop*, %struct.loop** %5, align 8
  %26 = load i32, i32* @UL_SINGLE_ITER, align 4
  %27 = call i32 @canonicalize_loop_induction_variables(%struct.loops* %24, %struct.loop* %25, i32 1, i32 %26, i32 1)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  %35 = call i32 (...) @scev_reset()
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @TODO_cleanup_cfg, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @canonicalize_loop_induction_variables(%struct.loops*, %struct.loop*, i32, i32, i32) #1

declare dso_local i32 @scev_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
