; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i64 }

@ZM_STA_PS_NONE = common dso_local global i32 0, align 4
@ZM_STA_PS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_siwpower(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usbdrv_private*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %13, align 8
  store %struct.usbdrv_private* %14, %struct.usbdrv_private** %10, align 8
  %15 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %16 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %22 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ZM_STA_PS_NONE, align 4
  store i32 %26, i32* %11, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ZM_STA_PS_MAX, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @zfiWlanSetPowerSaveMode(%struct.net_device* %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @zfiWlanSetPowerSaveMode(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
