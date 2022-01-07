; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_force_single_succ_latches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_force_single_succ_latches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, i32, %struct.loop** }
%struct.loop = type { i64, i64 }

@NULL_RTX = common dso_local global i32 0, align 4
@LOOPS_HAVE_SIMPLE_LATCHES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @force_single_succ_latches(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.loops*, %struct.loops** %2, align 8
  %9 = getelementptr inbounds %struct.loops, %struct.loops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = load %struct.loops*, %struct.loops** %2, align 8
  %14 = getelementptr inbounds %struct.loops, %struct.loops* %13, i32 0, i32 2
  %15 = load %struct.loop**, %struct.loop*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.loop*, %struct.loop** %15, i64 %17
  %19 = load %struct.loop*, %struct.loop** %18, align 8
  store %struct.loop* %19, %struct.loop** %4, align 8
  %20 = load %struct.loop*, %struct.loop** %4, align 8
  %21 = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.loop*, %struct.loop** %4, align 8
  %24 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %12
  %28 = load %struct.loop*, %struct.loop** %4, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @single_succ_p(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %45

34:                                               ; preds = %27, %12
  %35 = load %struct.loop*, %struct.loop** %4, align 8
  %36 = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.loop*, %struct.loop** %4, align 8
  %39 = getelementptr inbounds %struct.loop, %struct.loop* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @find_edge(i64 %37, i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NULL_RTX, align 4
  %44 = call i32 @loop_split_edge_with(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %33
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %6

48:                                               ; preds = %6
  %49 = load i32, i32* @LOOPS_HAVE_SIMPLE_LATCHES, align 4
  %50 = load %struct.loops*, %struct.loops** %2, align 8
  %51 = getelementptr inbounds %struct.loops, %struct.loops* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  ret void
}

declare dso_local i64 @single_succ_p(i64) #1

declare dso_local i32 @find_edge(i64, i64) #1

declare dso_local i32 @loop_split_edge_with(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
