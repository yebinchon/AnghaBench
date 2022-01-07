; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.oxu_info = type { %struct.usb_hcd** }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no devices found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot create OTG controller!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot create SPH controller!\0A\00", align 1
@OXU_CHIPIRQEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i64, i64, i8*, i32)* @oxu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_init(%struct.platform_device* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.oxu_info*, align 8
  %13 = alloca %struct.usb_hcd*, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %16 = call %struct.oxu_info* @platform_get_drvdata(%struct.platform_device* %15)
  store %struct.oxu_info* %16, %struct.oxu_info** %12, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @oxu_configuration(%struct.platform_device* %17, i8* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @oxu_verify_id(%struct.platform_device* %20, i8* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %96

31:                                               ; preds = %5
  %32 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.usb_hcd* @oxu_create(%struct.platform_device* %32, i64 %33, i64 %34, i8* %35, i32 %36, i32 1)
  store %struct.usb_hcd* %37, %struct.usb_hcd** %13, align 8
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %39 = call i64 @IS_ERR(%struct.usb_hcd* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %46 = call i32 @PTR_ERR(%struct.usb_hcd* %45)
  store i32 %46, i32* %14, align 4
  br label %94

47:                                               ; preds = %31
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %49 = load %struct.oxu_info*, %struct.oxu_info** %12, align 8
  %50 = getelementptr inbounds %struct.oxu_info, %struct.oxu_info* %49, i32 0, i32 0
  %51 = load %struct.usb_hcd**, %struct.usb_hcd*** %50, align 8
  %52 = getelementptr inbounds %struct.usb_hcd*, %struct.usb_hcd** %51, i64 0
  store %struct.usb_hcd* %48, %struct.usb_hcd** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.usb_hcd* @oxu_create(%struct.platform_device* %53, i64 %54, i64 %55, i8* %56, i32 %57, i32 0)
  store %struct.usb_hcd* %58, %struct.usb_hcd** %13, align 8
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %60 = call i64 @IS_ERR(%struct.usb_hcd* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  %63 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %67 = call i32 @PTR_ERR(%struct.usb_hcd* %66)
  store i32 %67, i32* %14, align 4
  br label %81

68:                                               ; preds = %47
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %70 = load %struct.oxu_info*, %struct.oxu_info** %12, align 8
  %71 = getelementptr inbounds %struct.oxu_info, %struct.oxu_info* %70, i32 0, i32 0
  %72 = load %struct.usb_hcd**, %struct.usb_hcd*** %71, align 8
  %73 = getelementptr inbounds %struct.usb_hcd*, %struct.usb_hcd** %72, i64 1
  store %struct.usb_hcd* %69, %struct.usb_hcd** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @OXU_CHIPIRQEN_SET, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* @OXU_CHIPIRQEN_SET, align 4
  %78 = call i32 @oxu_readl(i8* %76, i32 %77)
  %79 = or i32 %78, 3
  %80 = call i32 @oxu_writel(i8* %74, i32 %75, i32 %79)
  store i32 0, i32* %6, align 4
  br label %96

81:                                               ; preds = %62
  %82 = load %struct.oxu_info*, %struct.oxu_info** %12, align 8
  %83 = getelementptr inbounds %struct.oxu_info, %struct.oxu_info* %82, i32 0, i32 0
  %84 = load %struct.usb_hcd**, %struct.usb_hcd*** %83, align 8
  %85 = getelementptr inbounds %struct.usb_hcd*, %struct.usb_hcd** %84, i64 0
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %85, align 8
  %87 = call i32 @usb_remove_hcd(%struct.usb_hcd* %86)
  %88 = load %struct.oxu_info*, %struct.oxu_info** %12, align 8
  %89 = getelementptr inbounds %struct.oxu_info, %struct.oxu_info* %88, i32 0, i32 0
  %90 = load %struct.usb_hcd**, %struct.usb_hcd*** %89, align 8
  %91 = getelementptr inbounds %struct.usb_hcd*, %struct.usb_hcd** %90, i64 0
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %91, align 8
  %93 = call i32 @usb_put_hcd(%struct.usb_hcd* %92)
  br label %94

94:                                               ; preds = %81, %41
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %68, %25
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.oxu_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @oxu_configuration(%struct.platform_device*, i8*) #1

declare dso_local i32 @oxu_verify_id(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.usb_hcd* @oxu_create(%struct.platform_device*, i64, i64, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_hcd*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_hcd*) #1

declare dso_local i32 @oxu_writel(i8*, i32, i32) #1

declare dso_local i32 @oxu_readl(i8*, i32) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
