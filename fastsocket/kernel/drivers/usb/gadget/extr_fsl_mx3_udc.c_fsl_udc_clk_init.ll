; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_mx3_udc.c_fsl_udc_clk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_mx3_udc.c_fsl_udc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fsl_usb2_platform_data* }
%struct.fsl_usb2_platform_data = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"usb_ahb\00", align 1
@mxc_ahb_clk = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"clk_enable(\22usb_ahb\22) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@mxc_usb_clk = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"clk_get(\22usb\22) failed\0A\00", align 1
@FSL_USB2_PHY_ULPI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"USB_CLK=%lu, should be 60MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clk_enable(\22usb_clk\22) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_udc_clk_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_usb2_platform_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %9, align 8
  store %struct.fsl_usb2_platform_data* %10, %struct.fsl_usb2_platform_data** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32* @clk_get(%struct.TYPE_3__* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** @mxc_ahb_clk, align 8
  %14 = load i32*, i32** @mxc_ahb_clk, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** @mxc_ahb_clk, align 8
  %19 = call i32 @PTR_ERR(i32* %18)
  store i32 %19, i32* %2, align 4
  br label %82

20:                                               ; preds = %1
  %21 = load i32*, i32** @mxc_ahb_clk, align 8
  %22 = call i32 @clk_enable(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %78

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32* @clk_get(%struct.TYPE_3__* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %32, i32** @mxc_usb_clk, align 8
  %33 = load i32*, i32** @mxc_usb_clk, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** @mxc_usb_clk, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %6, align 4
  br label %75

42:                                               ; preds = %29
  %43 = load i32*, i32** @mxc_usb_clk, align 8
  %44 = call i64 @clk_get_rate(i32* %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FSL_USB2_PHY_ULPI, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i64, i64* %5, align 8
  %52 = icmp ult i64 %51, 59999000
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %5, align 8
  %55 = icmp ugt i64 %54, 60001000
  br i1 %55, label %56, label %61

56:                                               ; preds = %53, %50
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  br label %72

61:                                               ; preds = %53, %42
  %62 = load i32*, i32** @mxc_usb_clk, align 8
  %63 = call i32 @clk_enable(i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %71

70:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %82

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32*, i32** @mxc_usb_clk, align 8
  %74 = call i32 @clk_put(i32* %73)
  store i32* null, i32** @mxc_usb_clk, align 8
  br label %75

75:                                               ; preds = %72, %36
  %76 = load i32*, i32** @mxc_ahb_clk, align 8
  %77 = call i32 @clk_disable(i32* %76)
  br label %78

78:                                               ; preds = %75, %25
  %79 = load i32*, i32** @mxc_ahb_clk, align 8
  %80 = call i32 @clk_put(i32* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %70, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32* @clk_get(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @clk_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
