; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_interpret_loop_phi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_interpret_loop_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32)* @interpret_loop_phi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_loop_phi(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.loop*, align 8
  %10 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.loop* @loop_containing_stmt(i32 %11)
  store %struct.loop* %12, %struct.loop** %7, align 8
  %13 = load %struct.loop*, %struct.loop** %7, align 8
  %14 = load %struct.loop*, %struct.loop** %4, align 8
  %15 = icmp ne %struct.loop* %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.loop*, %struct.loop** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PHI_RESULT(i32 %18)
  %20 = call i32 @analyze_scalar_evolution(%struct.loop* %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.loop*, %struct.loop** %7, align 8
  %22 = load %struct.loop*, %struct.loop** %4, align 8
  %23 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call %struct.loop* @superloop_at_depth(%struct.loop* %21, i64 %25)
  store %struct.loop* %26, %struct.loop** %9, align 8
  %27 = load %struct.loop*, %struct.loop** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @compute_overall_effect_of_inner_loop(%struct.loop* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @analyze_initial_condition(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @analyze_evolution_in_loop(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.loop* @loop_containing_stmt(i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i32) #1

declare dso_local i32 @PHI_RESULT(i32) #1

declare dso_local %struct.loop* @superloop_at_depth(%struct.loop*, i64) #1

declare dso_local i32 @compute_overall_effect_of_inner_loop(%struct.loop*, i32) #1

declare dso_local i32 @analyze_initial_condition(i32) #1

declare dso_local i32 @analyze_evolution_in_loop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
