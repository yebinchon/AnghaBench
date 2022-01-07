; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_free_numbers_of_iterations_estimates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_free_numbers_of_iterations_estimates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_numbers_of_iterations_estimates(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.loops*, %struct.loops** %2, align 8
  %8 = getelementptr inbounds %struct.loops, %struct.loops* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.loops*, %struct.loops** %2, align 8
  %13 = getelementptr inbounds %struct.loops, %struct.loops* %12, i32 0, i32 1
  %14 = load %struct.loop**, %struct.loop*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.loop*, %struct.loop** %14, i64 %16
  %18 = load %struct.loop*, %struct.loop** %17, align 8
  store %struct.loop* %18, %struct.loop** %4, align 8
  %19 = load %struct.loop*, %struct.loop** %4, align 8
  %20 = icmp ne %struct.loop* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.loop*, %struct.loop** %4, align 8
  %23 = call i32 @free_numbers_of_iterations_estimates_loop(%struct.loop* %22)
  br label %24

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @free_numbers_of_iterations_estimates_loop(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
