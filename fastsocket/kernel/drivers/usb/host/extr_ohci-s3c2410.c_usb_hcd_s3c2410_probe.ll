; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_usb_hcd_s3c2410_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_usb_hcd_s3c2410_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_hcd = type { i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"s3c24xx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hcd_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"usb-host\00", align 1
@clk = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot get usb-host clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"usb-bus-host\00", align 1
@usb_clk = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"cannot get usb-bus-host clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hc_driver*, %struct.platform_device*)* @usb_hcd_s3c2410_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_s3c2410_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i32, align 4
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @s3c2410_usb_set_power(i32 %11, i32 1, i32 1)
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @s3c2410_usb_set_power(i32 %16, i32 2, i32 1)
  %18 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %18, %struct.TYPE_6__* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* %21, %struct.usb_hcd** %6, align 8
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %23 = icmp eq %struct.usb_hcd* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %157

27:                                               ; preds = %2
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %41, %47
  %49 = add nsw i64 %48, 1
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @hcd_name, align 4
  %59 = call i32 @request_mem_region(i64 %54, i64 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %27
  %62 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = call i32 @dev_err(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %153

67:                                               ; preds = %27
  %68 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = call i32 @clk_get(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* @clk, align 4
  %71 = load i32, i32* @clk, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = call i32 @dev_err(%struct.TYPE_6__* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %145

80:                                               ; preds = %67
  %81 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 1
  %83 = call i32 @clk_get(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %83, i32* @usb_clk, align 4
  %84 = load i32, i32* @usb_clk, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = call i32 @dev_err(%struct.TYPE_6__* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %142

93:                                               ; preds = %80
  %94 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %96 = call i32 @s3c2410_start_hc(%struct.platform_device* %94, %struct.usb_hcd* %95)
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %101 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ioremap(i64 %99, i64 %102)
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %105 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %107 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %93
  %111 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = call i32 @dev_err(%struct.TYPE_6__* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %133

116:                                              ; preds = %93
  %117 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %118 = call i32 @hcd_to_ohci(%struct.usb_hcd* %117)
  %119 = call i32 @ohci_hcd_init(i32 %118)
  %120 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @IRQF_DISABLED, align 4
  %128 = call i32 @usb_add_hcd(%struct.usb_hcd* %120, i64 %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %116
  br label %133

132:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %157

133:                                              ; preds = %131, %110
  %134 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %135 = call i32 @s3c2410_stop_hc(%struct.platform_device* %134)
  %136 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %137 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @iounmap(i32 %138)
  %140 = load i32, i32* @usb_clk, align 4
  %141 = call i32 @clk_put(i32 %140)
  br label %142

142:                                              ; preds = %133, %87
  %143 = load i32, i32* @clk, align 4
  %144 = call i32 @clk_put(i32 %143)
  br label %145

145:                                              ; preds = %142, %74
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %147 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %150 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @release_mem_region(i64 %148, i64 %151)
  br label %153

153:                                              ; preds = %145, %61
  %154 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %155 = call i32 @usb_put_hcd(%struct.usb_hcd* %154)
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %132, %24
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @s3c2410_usb_set_power(i32, i32, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @s3c2410_start_hc(%struct.platform_device*, %struct.usb_hcd*) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i64, i32) #1

declare dso_local i32 @s3c2410_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
