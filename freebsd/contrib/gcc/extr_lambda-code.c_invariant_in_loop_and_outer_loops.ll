; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_invariant_in_loop_and_outer_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_invariant_in_loop_and_outer_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64, %struct.loop* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32)* @invariant_in_loop_and_outer_loops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invariant_in_loop_and_outer_loops(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @is_gimple_min_invariant(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.loop*, %struct.loop** %4, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.loop*, %struct.loop** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @expr_invariant_in_loop_p(%struct.loop* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.loop*, %struct.loop** %4, align 8
  %24 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 1
  %25 = load %struct.loop*, %struct.loop** %24, align 8
  %26 = icmp ne %struct.loop* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.loop*, %struct.loop** %4, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 1
  %30 = load %struct.loop*, %struct.loop** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @invariant_in_loop_and_outer_loops(%struct.loop* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %27, %22
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %21, %15, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @expr_invariant_in_loop_p(%struct.loop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
