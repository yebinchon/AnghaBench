; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_enable_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxfb_info = type { i32, i32 (i32)*, i32 (i32)*, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Enabling LCD controller\0A\00", align 1
@LCDC_SSA = common dso_local global i64 0, align 8
@LCDC_POS = common dso_local global i64 0, align 8
@LCDC_CPOS = common dso_local global i64 0, align 8
@CPOS_CC0 = common dso_local global i32 0, align 4
@CPOS_CC1 = common dso_local global i32 0, align 4
@RMCR_LCDC_EN = common dso_local global i32 0, align 4
@LCDC_RMCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxfb_info*)* @imxfb_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxfb_enable_controller(%struct.imxfb_info* %0) #0 {
  %2 = alloca %struct.imxfb_info*, align 8
  store %struct.imxfb_info* %0, %struct.imxfb_info** %2, align 8
  %3 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LCDC_SSA, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %14 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LCDC_POS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LCDC_CPOS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @CPOS_CC0, align 4
  %26 = load i32, i32* @CPOS_CC1, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %31 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LCDC_CPOS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* @RMCR_LCDC_EN, align 4
  %37 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %38 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LCDC_RMCR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %44 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clk_enable(i32 %45)
  %47 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %48 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %47, i32 0, i32 2
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = icmp ne i32 (i32)* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %53 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %52, i32 0, i32 2
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = call i32 %54(i32 1)
  br label %56

56:                                               ; preds = %51, %1
  %57 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %58 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %57, i32 0, i32 1
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = icmp ne i32 (i32)* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %63 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %62, i32 0, i32 1
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = call i32 %64(i32 1)
  br label %66

66:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
