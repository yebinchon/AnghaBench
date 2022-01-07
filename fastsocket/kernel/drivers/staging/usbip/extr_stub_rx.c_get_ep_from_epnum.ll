; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_get_ep_from_epnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_get_ep_from_epnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device = type { %struct.usb_host_config*, %struct.usb_host_endpoint }
%struct.usb_host_config = type { %struct.TYPE_6__**, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_host_endpoint* (%struct.usb_device*, i32)* @get_ep_from_epnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_host_endpoint* @get_ep_from_epnum(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_host_endpoint*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  store %struct.usb_host_endpoint* %17, %struct.usb_host_endpoint** %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load %struct.usb_host_config*, %struct.usb_host_config** %20, align 8
  store %struct.usb_host_config* %21, %struct.usb_host_config** %6, align 8
  %22 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %23 = icmp ne %struct.usb_host_config* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %3, align 8
  br label %80

25:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %71, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %29 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %26
  %34 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %35 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %41, align 8
  store %struct.usb_host_interface* %42, %struct.usb_host_interface** %12, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %67, %33
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %46 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %52 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %51, i32 0, i32 0
  %53 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %53, i64 %55
  store %struct.usb_host_endpoint* %56, %struct.usb_host_endpoint** %9, align 8
  %57 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %58 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 127
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  br label %70

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %43

70:                                               ; preds = %65, %43
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* %78, %struct.usb_host_endpoint** %3, align 8
  br label %80

79:                                               ; preds = %74
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %3, align 8
  br label %80

80:                                               ; preds = %79, %77, %24, %15
  %81 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  ret %struct.usb_host_endpoint* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
