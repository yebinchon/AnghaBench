; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_rcvr_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_rcvr_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp_data = type { i64 }

@OMAP2_CONTROL_DEVCONF0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp_data*, i32)* @omap_mcbsp_dai_set_rcvr_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_set_rcvr_src(%struct.omap_mcbsp_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_mcbsp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_mcbsp_data* %0, %struct.omap_mcbsp_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i64 (...) @cpu_class_is_omap1()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %4, align 8
  %17 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %29 [
    i32 130, label %25
    i32 131, label %26
    i32 128, label %27
    i32 129, label %28
  ]

25:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %25
  store i32 3, i32* %6, align 4
  br label %32

27:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %27
  store i32 4, i32* %6, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @omap_ctrl_readl(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @omap_ctrl_writel(i32 %40, i32 %41)
  br label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @omap_ctrl_readl(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @omap_ctrl_writel(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %35
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %29, %20, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @omap_ctrl_writel(i32, i32) #1

declare dso_local i32 @omap_ctrl_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
