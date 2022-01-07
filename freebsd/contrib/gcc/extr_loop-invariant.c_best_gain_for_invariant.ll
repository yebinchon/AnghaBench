; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_best_gain_for_invariant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_best_gain_for_invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invariant = type { i64, i64, i64 }

@invariant_p = common dso_local global i32 0, align 4
@invariants = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.invariant**, i32*, i32, i32, i32)* @best_gain_for_invariant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @best_gain_for_invariant(%struct.invariant** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.invariant**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.invariant*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.invariant** %0, %struct.invariant*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %54, %5
  %17 = load i32, i32* @invariant_p, align 4
  %18 = load i32, i32* @invariants, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load %struct.invariant*, %struct.invariant** %11, align 8
  %21 = call i64 @VEC_iterate(i32 %17, i32 %18, i32 %19, %struct.invariant* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = load %struct.invariant*, %struct.invariant** %11, align 8
  %25 = getelementptr inbounds %struct.invariant, %struct.invariant* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %54

29:                                               ; preds = %23
  %30 = load %struct.invariant*, %struct.invariant** %11, align 8
  %31 = getelementptr inbounds %struct.invariant, %struct.invariant* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.invariant*, %struct.invariant** %11, align 8
  %34 = getelementptr inbounds %struct.invariant, %struct.invariant* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %54

38:                                               ; preds = %29
  %39 = load %struct.invariant*, %struct.invariant** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @gain_for_invariant(%struct.invariant* %39, i32* %14, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.invariant*, %struct.invariant** %11, align 8
  %50 = load %struct.invariant**, %struct.invariant*** %6, align 8
  store %struct.invariant* %49, %struct.invariant** %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %37, %28
  %55 = load i32, i32* %15, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i64 @VEC_iterate(i32, i32, i32, %struct.invariant*) #1

declare dso_local i32 @gain_for_invariant(%struct.invariant*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
