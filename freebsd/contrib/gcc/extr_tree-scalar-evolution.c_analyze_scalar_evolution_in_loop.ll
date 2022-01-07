; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_scalar_evolution_in_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_scalar_evolution_in_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.loop*, i32 }

@chrec_dont_know = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, %struct.loop*, i64, i32*)* @analyze_scalar_evolution_in_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @analyze_scalar_evolution_in_loop(%struct.loop* %0, %struct.loop* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %6, align 8
  store %struct.loop* %1, %struct.loop** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %4
  br label %19

19:                                               ; preds = %18, %52
  %20 = load %struct.loop*, %struct.loop** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @analyze_scalar_evolution(%struct.loop* %20, i64 %21)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.loop*, %struct.loop** %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @resolve_mixers(%struct.loop* %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %28, %19
  %35 = load %struct.loop*, %struct.loop** %7, align 8
  %36 = load %struct.loop*, %struct.loop** %6, align 8
  %37 = icmp eq %struct.loop* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %5, align 8
  br label %56

40:                                               ; preds = %34
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.loop*, %struct.loop** %7, align 8
  %43 = getelementptr inbounds %struct.loop, %struct.loop* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @no_evolution_in_loop_p(i64 %41, i32 %44, i32* %10)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47, %40
  %51 = load i64, i64* @chrec_dont_know, align 8
  store i64 %51, i64* %5, align 8
  br label %56

52:                                               ; preds = %47
  %53 = load %struct.loop*, %struct.loop** %7, align 8
  %54 = getelementptr inbounds %struct.loop, %struct.loop* %53, i32 0, i32 0
  %55 = load %struct.loop*, %struct.loop** %54, align 8
  store %struct.loop* %55, %struct.loop** %7, align 8
  br label %19

56:                                               ; preds = %50, %38
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @analyze_scalar_evolution(%struct.loop*, i64) #1

declare dso_local i64 @resolve_mixers(%struct.loop*, i64) #1

declare dso_local i32 @no_evolution_in_loop_p(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
