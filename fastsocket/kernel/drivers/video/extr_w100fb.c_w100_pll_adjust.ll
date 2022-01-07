; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_pll_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_pll_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.w100_pll_info = type { i32 }

@w100_pwr_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@remapped_regs = common dso_local global i64 0, align 8
@mmPLL_CNTL = common dso_local global i64 0, align 8
@TESTCLK_SRC_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w100_pll_info*)* @w100_pll_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w100_pll_adjust(%struct.w100_pll_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w100_pll_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w100_pll_info* %0, %struct.w100_pll_info** %3, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 6), align 8
  br label %6

6:                                                ; preds = %61, %1
  store i32 13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 7), align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 1), align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* @remapped_regs, align 8
  %10 = load i64, i64* @mmPLL_CNTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %8, i64 %11)
  %13 = load i32, i32* @TESTCLK_SRC_PLL, align 4
  %14 = call i32 @w100_get_testcount(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.w100_pll_info*, %struct.w100_pll_info** %3, align 8
  %17 = getelementptr inbounds %struct.w100_pll_info, %struct.w100_pll_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %6
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 7), align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 1), align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* @remapped_regs, align 8
  %24 = load i64, i64* @mmPLL_CNTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %22, i64 %25)
  %27 = load i32, i32* @TESTCLK_SRC_PLL, align 4
  %28 = call i32 @w100_get_testcount(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.w100_pll_info*, %struct.w100_pll_info** %3, align 8
  %31 = getelementptr inbounds %struct.w100_pll_info, %struct.w100_pll_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ule i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %62

35:                                               ; preds = %20
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 4), align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 3), align 4
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  br label %61

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %6
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  br label %60

52:                                               ; preds = %46
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 3), align 4
  %54 = icmp slt i32 %53, 7
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 5), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 3), align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 3), align 4
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %62

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %44
  br i1 true, label %6, label %62

62:                                               ; preds = %34, %58, %61
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @w100_get_testcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
