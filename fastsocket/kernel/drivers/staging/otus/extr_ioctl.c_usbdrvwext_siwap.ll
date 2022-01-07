; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ZM_MODE_AP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_siwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usbdrv_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
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
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i64 @zfiWlanQueryWlanMode(%struct.net_device* %21)
  %23 = load i64, i64* @ZM_MODE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @zfiWlanSetMacAddress(%struct.net_device* %26, i32* %30)
  br label %39

32:                                               ; preds = %20
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @zfiWlanSetBssid(%struct.net_device* %33, i32* %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %41 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = call i32 @zfiWlanDisable(%struct.net_device* %45, i32 0)
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @zfiWlanEnable(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %44, %39
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @zfiWlanQueryWlanMode(%struct.net_device*) #1

declare dso_local i32 @zfiWlanSetMacAddress(%struct.net_device*, i32*) #1

declare dso_local i32 @zfiWlanSetBssid(%struct.net_device*, i32*) #1

declare dso_local i32 @zfiWlanDisable(%struct.net_device*, i32) #1

declare dso_local i32 @zfiWlanEnable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
