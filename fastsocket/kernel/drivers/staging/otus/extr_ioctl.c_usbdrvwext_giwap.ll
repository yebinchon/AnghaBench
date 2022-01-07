; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32, i64 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32* }

@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_STATUS_MEDIA_CONNECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_giwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usbdrv_private*, align 8
  %11 = alloca [6 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %13, align 8
  store %struct.usbdrv_private* %14, %struct.usbdrv_private** %10, align 8
  %15 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %16 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

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
  %31 = call i32 @zfiWlanQueryMacAddress(%struct.net_device* %26, i32* %30)
  br label %54

32:                                               ; preds = %20
  %33 = load %struct.usbdrv_private*, %struct.usbdrv_private** %10, align 8
  %34 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ZM_STATUS_MEDIA_CONNECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @zfiWlanQueryBssid(%struct.net_device* %39, i32* %43)
  br label %53

45:                                               ; preds = %32
  %46 = bitcast [6 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 24, i1 false)
  %47 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 24)
  br label %53

53:                                               ; preds = %45, %38
  br label %54

54:                                               ; preds = %53, %25
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @zfiWlanQueryWlanMode(%struct.net_device*) #1

declare dso_local i32 @zfiWlanQueryMacAddress(%struct.net_device*, i32*) #1

declare dso_local i32 @zfiWlanQueryBssid(%struct.net_device*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
