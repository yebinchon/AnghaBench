; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_siwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.usbdrv_private*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.usbdrv_private*, %struct.usbdrv_private** %20, align 8
  store %struct.usbdrv_private* %21, %struct.usbdrv_private** %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %85

28:                                               ; preds = %4
  %29 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %30 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %84

33:                                               ; preds = %28
  %34 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @E2BIG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %85

43:                                               ; preds = %33
  %44 = bitcast i8* %18 to i8**
  %45 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %46 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %49 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @copy_from_user(i8** %44, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %85

56:                                               ; preds = %43
  %57 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %58 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %18, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load %struct.usbdrv_private*, %struct.usbdrv_private** %12, align 8
  %63 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %83

66:                                               ; preds = %56
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @strlen(i8* %18)
  %69 = call i32 @zfiWlanSetSSID(%struct.net_device* %67, i8* %18, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @zfiWlanQueryFrequency(%struct.net_device* %71)
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 @zfiWlanSetFrequency(%struct.net_device* %70, i32 %72, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = call i32 @zfiWlanQueryEncryMode(%struct.net_device* %76)
  %78 = call i32 @zfiWlanSetEncryMode(%struct.net_device* %75, i32 %77)
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = call i32 @zfiWlanDisable(%struct.net_device* %79, i32 0)
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = call i32 @zfiWlanEnable(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %66, %56
  br label %84

84:                                               ; preds = %83, %28
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %53, %40, %25
  %86 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netif_running(%struct.net_device*) #2

declare dso_local i64 @copy_from_user(i8**, i32, i32) #2

declare dso_local i32 @zfiWlanSetSSID(%struct.net_device*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @zfiWlanSetFrequency(%struct.net_device*, i32, i32) #2

declare dso_local i32 @zfiWlanQueryFrequency(%struct.net_device*) #2

declare dso_local i32 @zfiWlanSetEncryMode(%struct.net_device*, i32) #2

declare dso_local i32 @zfiWlanQueryEncryMode(%struct.net_device*) #2

declare dso_local i32 @zfiWlanDisable(%struct.net_device*, i32) #2

declare dso_local i32 @zfiWlanEnable(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
