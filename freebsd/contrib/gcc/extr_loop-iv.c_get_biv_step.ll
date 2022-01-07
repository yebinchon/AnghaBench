; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_get_biv_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_get_biv_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }

@UNKNOWN = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.df_ref*, i64, i64*, i32*, i32*, i32*, i64*)* @get_biv_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_biv_step(%struct.df_ref* %0, i64 %1, i64* %2, i32* %3, i32* %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.df_ref*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  store %struct.df_ref* %0, %struct.df_ref** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @GET_MODE(i64 %16)
  %18 = load i32*, i32** %14, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i64*, i64** %15, align 8
  %27 = call i32 @get_biv_step_1(%struct.df_ref* %19, i64 %20, i64* %21, i32* %22, i32* %23, i32 %25, i64* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %59

30:                                               ; preds = %7
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UNKNOWN, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = icmp ne i32 %36, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %30
  %51 = load i64*, i64** %15, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @const0_rtx, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %50, %30
  %56 = phi i1 [ true, %30 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @gcc_assert(i32 %57)
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %29
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @get_biv_step_1(%struct.df_ref*, i64, i64*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
