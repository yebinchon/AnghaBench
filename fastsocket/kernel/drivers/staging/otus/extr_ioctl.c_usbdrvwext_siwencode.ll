; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.zsKeyInfo = type { i8*, i32, i32, i32 }

@ZM_ENCRYPTION_WEP_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@ZM_KEY_FLAG_DEFAULT_KEY = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_WEP_ENABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_siwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zsKeyInfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usbdrv_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @ZM_ENCRYPTION_WEP_DISABLED, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.usbdrv_private*, %struct.usbdrv_private** %16, align 8
  store %struct.usbdrv_private* %17, %struct.usbdrv_private** %13, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %88

24:                                               ; preds = %4
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %10, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %10, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %39 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %42 = and i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %10, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %48, %31
  %51 = load i32, i32* @ZM_KEY_FLAG_DEFAULT_KEY, align 4
  %52 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %10, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @zfiWlanSetKey(%struct.net_device* %53, %struct.zsKeyInfo* byval(%struct.zsKeyInfo) align 8 %10)
  %55 = load i32, i32* @ZM_ENCRYPTION_WEP_ENABLED, align 4
  store i32 %55, i32* %12, align 4
  br label %69

56:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @zfiWlanRemoveKey(%struct.net_device* %61, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %57

67:                                               ; preds = %57
  %68 = load i32, i32* @ZM_ENCRYPTION_WEP_DISABLED, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %50
  %70 = load %struct.usbdrv_private*, %struct.usbdrv_private** %13, align 8
  %71 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @zfiWlanSetWepStatus(%struct.net_device* %75, i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = call i32 @zfiWlanQueryFrequency(%struct.net_device* %79)
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @zfiWlanSetFrequency(%struct.net_device* %78, i32 %80, i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call i32 @zfiWlanDisable(%struct.net_device* %83, i32 0)
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call i32 @zfiWlanEnable(%struct.net_device* %85)
  br label %87

87:                                               ; preds = %74, %69
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %21
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @zfiWlanSetKey(%struct.net_device*, %struct.zsKeyInfo* byval(%struct.zsKeyInfo) align 8) #1

declare dso_local i32 @zfiWlanRemoveKey(%struct.net_device*, i32, i32) #1

declare dso_local i32 @zfiWlanSetWepStatus(%struct.net_device*, i32) #1

declare dso_local i32 @zfiWlanSetFrequency(%struct.net_device*, i32, i32) #1

declare dso_local i32 @zfiWlanQueryFrequency(%struct.net_device*) #1

declare dso_local i32 @zfiWlanDisable(%struct.net_device*, i32) #1

declare dso_local i32 @zfiWlanEnable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
