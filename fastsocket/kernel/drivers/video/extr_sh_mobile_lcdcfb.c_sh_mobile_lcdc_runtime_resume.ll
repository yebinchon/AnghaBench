; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.sh_mobile_lcdc_priv = type { i32*, %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32*, i32 }

@NR_CH_REGS = common dso_local global i32 0, align 4
@NR_SHARED_REGS = common dso_local global i32 0, align 4
@lcdc_shared_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sh_mobile_lcdc_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.sh_mobile_lcdc_priv* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.sh_mobile_lcdc_priv* %11, %struct.sh_mobile_lcdc_priv** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %51, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %14, i32 0, i32 1
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %20, i32 0, i32 1
  %22 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %22, i64 %24
  store %struct.sh_mobile_lcdc_chan* %25, %struct.sh_mobile_lcdc_chan** %5, align 8
  %26 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %51

31:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NR_CH_REGS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %37, i32 %38, i32 %45)
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %32

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %12

54:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NR_SHARED_REGS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %61 = load i32*, i32** @lcdc_shared_regs, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %60, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %55

77:                                               ; preds = %55
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.sh_mobile_lcdc_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan*, i32, i32) #1

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
