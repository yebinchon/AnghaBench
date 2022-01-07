; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_pll_set_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_pll_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.w100_pll_info = type { i32, i32, i32, i32 }

@w100_pwr_state = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@remapped_regs = common dso_local global i64 0, align 8
@mmPWRMGT_CNTL = common dso_local global i64 0, align 8
@CLK_SRC_XTAL = common dso_local global i32 0, align 4
@mmSCLK_CNTL = common dso_local global i64 0, align 8
@mmPLL_REF_FB_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w100_pll_info*)* @w100_pll_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w100_pll_set_clk(%struct.w100_pll_info* %0) #0 {
  %2 = alloca %struct.w100_pll_info*, align 8
  %3 = alloca i32, align 4
  store %struct.w100_pll_info* %0, %struct.w100_pll_info** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 0), align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 1), align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 0), align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* @remapped_regs, align 8
  %10 = load i64, i64* @mmPWRMGT_CNTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %8, i64 %11)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @CLK_SRC_XTAL, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 3, i32 1, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 3, i32 0), align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* @remapped_regs, align 8
  %18 = load i64, i64* @mmSCLK_CNTL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %16, i64 %19)
  %21 = load %struct.w100_pll_info*, %struct.w100_pll_info** %2, align 8
  %22 = getelementptr inbounds %struct.w100_pll_info, %struct.w100_pll_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 3), align 4
  %24 = load %struct.w100_pll_info*, %struct.w100_pll_info** %2, align 8
  %25 = getelementptr inbounds %struct.w100_pll_info, %struct.w100_pll_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 2), align 8
  %27 = load %struct.w100_pll_info*, %struct.w100_pll_info** %2, align 8
  %28 = getelementptr inbounds %struct.w100_pll_info, %struct.w100_pll_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 1), align 4
  %30 = load %struct.w100_pll_info*, %struct.w100_pll_info** %2, align 8
  %31 = getelementptr inbounds %struct.w100_pll_info, %struct.w100_pll_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 0), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 2, i32 0), align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @remapped_regs, align 8
  %36 = load i64, i64* @mmPLL_REF_FB_DIV, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %34, i64 %37)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 2), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 0), align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* @remapped_regs, align 8
  %42 = load i64, i64* @mmPWRMGT_CNTL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %40, i64 %43)
  %45 = load %struct.w100_pll_info*, %struct.w100_pll_info** %2, align 8
  %46 = call i32 @w100_pll_calibration(%struct.w100_pll_info* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 0), align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %13
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 1), align 4
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @w100_pwr_state, i32 0, i32 1, i32 0), align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* @remapped_regs, align 8
  %53 = load i64, i64* @mmPWRMGT_CNTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %51, i64 %54)
  br label %56

56:                                               ; preds = %49, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @w100_pll_calibration(%struct.w100_pll_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
