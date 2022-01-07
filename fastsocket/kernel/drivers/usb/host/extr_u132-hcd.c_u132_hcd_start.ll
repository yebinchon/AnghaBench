; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.u132 = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.u132_platform_data = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device is being removed\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_OPTI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"WARNING: OPTi workarounds unavailable\0A\00", align 1
@PCI_VENDOR_ID_COMPAQ = common dso_local global i64 0, align 8
@OHCI_QUIRK_ZFMICRO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"platform_device missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @u132_hcd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_hcd_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.u132*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %9)
  store %struct.u132* %10, %struct.u132** %4, align 8
  %11 = load %struct.u132*, %struct.u132** %4, align 8
  %12 = getelementptr inbounds %struct.u132, %struct.u132* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.u132*, %struct.u132** %4, align 8
  %17 = getelementptr inbounds %struct.u132, %struct.u132* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.u132*, %struct.u132** %4, align 8
  %21 = getelementptr inbounds %struct.u132, %struct.u132* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %131

26:                                               ; preds = %1
  %27 = load %struct.u132*, %struct.u132** %4, align 8
  %28 = getelementptr inbounds %struct.u132, %struct.u132* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.u132*, %struct.u132** %4, align 8
  %33 = getelementptr inbounds %struct.u132, %struct.u132* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ESHUTDOWN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %131

39:                                               ; preds = %26
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %123

45:                                               ; preds = %39
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.platform_device* @to_platform_device(i64 %49)
  store %struct.platform_device* %50, %struct.platform_device** %6, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.u132_platform_data*
  %56 = getelementptr inbounds %struct.u132_platform_data, %struct.u132_platform_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.u132_platform_data*
  %63 = getelementptr inbounds %struct.u132_platform_data, %struct.u132_platform_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  %65 = load %struct.u132*, %struct.u132** %4, align 8
  %66 = getelementptr inbounds %struct.u132, %struct.u132* %65, i32 0, i32 2
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = call i32 @msleep(i32 10)
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %45
  %73 = load i64, i64* %8, align 8
  %74 = icmp eq i64 %73, 29708
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %77 = load %struct.u132*, %struct.u132** %4, align 8
  %78 = getelementptr inbounds %struct.u132, %struct.u132* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %107

79:                                               ; preds = %72, %45
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @PCI_VENDOR_ID_OPTI, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 51297
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.u132*, %struct.u132** %4, align 8
  %88 = getelementptr inbounds %struct.u132, %struct.u132* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %106

92:                                               ; preds = %83, %79
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @PCI_VENDOR_ID_COMPAQ, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %97, 41208
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @OHCI_QUIRK_ZFMICRO, align 4
  %101 = load %struct.u132*, %struct.u132** %4, align 8
  %102 = getelementptr inbounds %struct.u132, %struct.u132* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %96, %92
  br label %106

106:                                              ; preds = %105, %86
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.u132*, %struct.u132** %4, align 8
  %109 = call i32 @u132_run(%struct.u132* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.u132*, %struct.u132** %4, align 8
  %114 = call i32 @u132_disable(%struct.u132* %113)
  %115 = load %struct.u132*, %struct.u132** %4, align 8
  %116 = getelementptr inbounds %struct.u132, %struct.u132* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  %118 = call i32 @msleep(i32 100)
  %119 = load %struct.u132*, %struct.u132** %4, align 8
  %120 = getelementptr inbounds %struct.u132, %struct.u132* %119, i32 0, i32 2
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %131

123:                                              ; preds = %39
  %124 = load %struct.u132*, %struct.u132** %4, align 8
  %125 = getelementptr inbounds %struct.u132, %struct.u132* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %123, %117, %31, %15
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.platform_device* @to_platform_device(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @u132_run(%struct.u132*) #1

declare dso_local i32 @u132_disable(%struct.u132*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
