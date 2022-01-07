; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-sa1111.c_usb_hcd_sa1111_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-sa1111.c_usb_hcd_sa1111_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.sa1111_dev = type { i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.usb_hcd = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sa1111\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hcd_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"request_mem_region failed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_sa1111_probe(%struct.hc_driver* %0, %struct.sa1111_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.sa1111_dev*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i32, align 4
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.sa1111_dev* %1, %struct.sa1111_dev** %5, align 8
  %8 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %9 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %10 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %9, i32 0, i32 3
  %11 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %8, i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* %11, %struct.usb_hcd** %6, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %13 = icmp ne %struct.usb_hcd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %19 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %25 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %29 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = add nsw i64 %32, 1
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %40 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @hcd_name, align 4
  %43 = call i32 @request_mem_region(i64 %38, i64 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %17
  %46 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %82

49:                                               ; preds = %17
  %50 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %51 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %56 = call i32 @sa1111_start_hc(%struct.sa1111_dev* %55)
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %58 = call i32 @hcd_to_ohci(%struct.usb_hcd* %57)
  %59 = call i32 @ohci_hcd_init(i32 %58)
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %61 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %62 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IRQF_DISABLED, align 4
  %67 = call i32 @usb_add_hcd(%struct.usb_hcd* %60, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %49
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %86

72:                                               ; preds = %49
  %73 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %74 = call i32 @sa1111_stop_hc(%struct.sa1111_dev* %73)
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %76 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @release_mem_region(i64 %77, i64 %80)
  br label %82

82:                                               ; preds = %72, %45
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %84 = call i32 @usb_put_hcd(%struct.usb_hcd* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %70, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @sa1111_start_hc(%struct.sa1111_dev*) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @sa1111_stop_hc(%struct.sa1111_dev*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
