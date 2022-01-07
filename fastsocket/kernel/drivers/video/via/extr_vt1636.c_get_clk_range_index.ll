; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_get_clk_range_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_get_clk_range_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPA_CLK_30M = common dso_local global i64 0, align 8
@DPA_CLK_RANGE_30M = common dso_local global i32 0, align 4
@DPA_CLK_50M = common dso_local global i64 0, align 8
@DPA_CLK_RANGE_30_50M = common dso_local global i32 0, align 4
@DPA_CLK_70M = common dso_local global i64 0, align 8
@DPA_CLK_RANGE_50_70M = common dso_local global i32 0, align 4
@DPA_CLK_100M = common dso_local global i64 0, align 8
@DPA_CLK_RANGE_70_100M = common dso_local global i32 0, align 4
@DPA_CLK_150M = common dso_local global i64 0, align 8
@DPA_CLK_RANGE_100_150M = common dso_local global i32 0, align 4
@DPA_CLK_RANGE_150M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_clk_range_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clk_range_index(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @DPA_CLK_30M, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @DPA_CLK_RANGE_30M, align 4
  store i32 %8, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @DPA_CLK_50M, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @DPA_CLK_RANGE_30_50M, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @DPA_CLK_70M, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @DPA_CLK_RANGE_50_70M, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @DPA_CLK_100M, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DPA_CLK_RANGE_70_100M, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @DPA_CLK_150M, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @DPA_CLK_RANGE_100_150M, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @DPA_CLK_RANGE_150M, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %25, %19, %13, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
