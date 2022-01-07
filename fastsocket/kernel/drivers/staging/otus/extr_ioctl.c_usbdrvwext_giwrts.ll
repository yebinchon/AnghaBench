; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwrts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwrts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_giwrts(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usbdrv_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.usbdrv_private*, %struct.usbdrv_private** %12, align 8
  store %struct.usbdrv_private* %13, %struct.usbdrv_private** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %40

20:                                               ; preds = %4
  %21 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %22 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call i32 @zfiWlanQueryRtsThreshold(%struct.net_device* %27)
  %29 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %30 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %32 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 2347
  %35 = zext i1 %34 to i32
  %36 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %37 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %26, %25, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @zfiWlanQueryRtsThreshold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
