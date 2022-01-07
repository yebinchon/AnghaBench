; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_compute_abbreviated_month_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_compute_abbreviated_month_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@month_max_size = common dso_local global i64 0, align 8
@padding_for_month = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_abbreviated_month_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_abbreviated_month_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [12 x i64], align 16
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 12
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @get_abmon(i32 %8)
  %10 = call i64 @mbswidth(i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i64 -1, i64* @month_max_size, align 8
  br label %46

14:                                               ; preds = %7
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 %17
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @month_max_size, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* %2, align 8
  store i64 %23, i64* @month_max_size, align 8
  br label %24

24:                                               ; preds = %22, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %4

28:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %30, 12
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i64, i64* @month_max_size, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %33, %37
  %39 = load i64*, i64** @padding_for_month, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %29

46:                                               ; preds = %13, %29
  ret void
}

declare dso_local i64 @mbswidth(i32) #1

declare dso_local i32 @get_abmon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
