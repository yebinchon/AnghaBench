; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_disable_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_disable_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { i64 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_disable_endpoint(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = icmp ne %struct.usb_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %71

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @usb_endpoint_out(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 1
  %22 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %22, i64 %24
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %25, align 8
  store %struct.usb_host_endpoint* %26, %struct.usb_host_endpoint** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 1
  %32 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %32, i64 %34
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %35, align 8
  br label %36

36:                                               ; preds = %29, %19
  br label %55

37:                                               ; preds = %15
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 0
  %40 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %40, i64 %42
  %44 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %43, align 8
  store %struct.usb_host_endpoint* %44, %struct.usb_host_endpoint** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %50, i64 %52
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %53, align 8
  br label %54

54:                                               ; preds = %47, %37
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %57 = icmp ne %struct.usb_host_endpoint* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %60 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %62 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %63 = call i32 @usb_hcd_flush_endpoint(%struct.usb_device* %61, %struct.usb_host_endpoint* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %68 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %69 = call i32 @usb_hcd_disable_endpoint(%struct.usb_device* %67, %struct.usb_host_endpoint* %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %71

71:                                               ; preds = %14, %70, %55
  ret void
}

declare dso_local i64 @usb_endpoint_out(i32) #1

declare dso_local i32 @usb_hcd_flush_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*) #1

declare dso_local i32 @usb_hcd_disable_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
