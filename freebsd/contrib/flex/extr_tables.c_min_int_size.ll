; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_min_int_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_min_int_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_data = type { i32 }

@INT8_MAX = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.yytbl_data*)* @min_int_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @min_int_size(%struct.yytbl_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.yytbl_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.yytbl_data* %0, %struct.yytbl_data** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %9 = call i64 @yytbl_calc_total_len(%struct.yytbl_data* %8)
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @yytbl_data_geti(%struct.yytbl_data* %15, i64 %16)
  %18 = call i64 @abs(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %22, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @INT8_MAX, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64 4, i64* %2, align 8
  br label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @INT16_MAX, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 4, i64* %2, align 8
  br label %39

38:                                               ; preds = %33
  store i64 8, i64* %2, align 8
  br label %39

39:                                               ; preds = %38, %37, %32
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i64 @yytbl_calc_total_len(%struct.yytbl_data*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @yytbl_data_geti(%struct.yytbl_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
