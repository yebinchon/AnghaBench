; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_clks_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_clks_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp_data = type { i32 }

@OMAP243X_CONTROL_DEVCONF1 = common dso_local global i32 0, align 4
@OMAP_MCBSP_SYSCLK_CLKS_FCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAP343X_CONTROL_DEVCONF1 = common dso_local global i32 0, align 4
@OMAP2_CONTROL_DEVCONF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp_data*, i32)* @omap_mcbsp_dai_set_clks_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_set_clks_src(%struct.omap_mcbsp_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_mcbsp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_mcbsp_data* %0, %struct.omap_mcbsp_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @OMAP243X_CONTROL_DEVCONF1, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i64 (...) @cpu_class_is_omap1()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OMAP_MCBSP_SYSCLK_CLKS_FCLK, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %78

23:                                               ; preds = %2
  %24 = call i64 (...) @cpu_is_omap2420()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %4, align 8
  %28 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %26, %23
  %35 = call i64 (...) @cpu_is_omap343x()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @OMAP343X_CONTROL_DEVCONF1, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %4, align 8
  %41 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %53 [
    i32 0, label %43
    i32 1, label %45
    i32 2, label %47
    i32 3, label %49
    i32 4, label %51
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  store i32 %44, i32* %7, align 4
  store i32 2, i32* %6, align 4
  br label %56

45:                                               ; preds = %39
  %46 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  store i32 %46, i32* %7, align 4
  store i32 6, i32* %6, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %7, align 4
  store i32 2, i32* %6, align 4
  br label %56

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %7, align 4
  store i32 4, i32* %6, align 4
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %51, %49, %47, %45, %43
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @OMAP_MCBSP_SYSCLK_CLKS_FCLK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @omap_ctrl_readl(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @omap_ctrl_writel(i32 %66, i32 %67)
  br label %77

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @omap_ctrl_readl(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 1, %72
  %74 = or i32 %71, %73
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @omap_ctrl_writel(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %60
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %53, %31, %22, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpu_is_omap2420(...) #1

declare dso_local i64 @cpu_is_omap343x(...) #1

declare dso_local i32 @omap_ctrl_writel(i32, i32) #1

declare dso_local i32 @omap_ctrl_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
