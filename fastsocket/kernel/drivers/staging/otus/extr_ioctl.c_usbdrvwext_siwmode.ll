; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZM_MODE_AP = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_siwmode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usbdrv_private*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %13, align 8
  store %struct.usbdrv_private* %14, %struct.usbdrv_private** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %23 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %47

27:                                               ; preds = %21
  %28 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %29 = bitcast %union.iwreq_data* %28 to i32*
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %37 [
    i32 128, label %31
    i32 129, label %33
    i32 130, label %35
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @ZM_MODE_AP, align 4
  store i32 %32, i32* %11, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @ZM_MODE_INFRASTRUCTURE, align 4
  store i32 %34, i32* %11, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @ZM_MODE_IBSS, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @ZM_MODE_IBSS, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @zfiWlanSetWlanMode(%struct.net_device* %40, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @zfiWlanDisable(%struct.net_device* %43, i32 1)
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = call i32 @zfiWlanEnable(%struct.net_device* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %26, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @zfiWlanSetWlanMode(%struct.net_device*, i32) #1

declare dso_local i32 @zfiWlanDisable(%struct.net_device*, i32) #1

declare dso_local i32 @zfiWlanEnable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
