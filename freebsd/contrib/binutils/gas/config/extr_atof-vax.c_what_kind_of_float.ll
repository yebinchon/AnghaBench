; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_what_kind_of_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_what_kind_of_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_PRECISION = common dso_local global i32 0, align 4
@D_PRECISION = common dso_local global i32 0, align 4
@G_PRECISION = common dso_local global i32 0, align 4
@H_PRECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64*)* @what_kind_of_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @what_kind_of_float(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %25 [
    i32 102, label %9
    i32 100, label %13
    i32 103, label %17
    i32 104, label %21
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @F_PRECISION, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i64*, i64** %6, align 8
  store i64 8, i64* %12, align 8
  br label %26

13:                                               ; preds = %3
  %14 = load i32, i32* @D_PRECISION, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i64*, i64** %6, align 8
  store i64 8, i64* %16, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @G_PRECISION, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i64*, i64** %6, align 8
  store i64 11, i64* %20, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @H_PRECISION, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64*, i64** %6, align 8
  store i64 15, i64* %24, align 8
  br label %26

25:                                               ; preds = %3
  store i32 69, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %21, %17, %13, %9
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
