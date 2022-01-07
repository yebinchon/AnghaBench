; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_giwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usbdrv_private*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %17, align 8
  store %struct.usbdrv_private* %18, %struct.usbdrv_private** %10, align 8
  %19 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

30:                                               ; preds = %4
  %31 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %32 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds i8, i8* %23, i64 0
  %39 = call i32 @zfiWlanQuerySSID(%struct.net_device* %37, i8* %38, i64* %11)
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %23, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %52 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = call i32 @strlen(i8* %23)
  %54 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %55 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %58 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i8* %56, i8* %23, i32 %59)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

61:                                               ; preds = %47, %35, %27
  %62 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netif_running(%struct.net_device*) #2

declare dso_local i32 @zfiWlanQuerySSID(%struct.net_device*, i8*, i64*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
