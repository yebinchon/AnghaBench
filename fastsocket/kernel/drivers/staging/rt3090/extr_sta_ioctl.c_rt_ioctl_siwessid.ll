; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i64 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@MAX_LEN_OF_SSID = common dso_local global i64 0, align 8
@MEM_ALLOC_FLAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i32 @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %16 = call i32 @RTMP_TEST_FLAG(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %20 = call i32 @DBGPRINT(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENETDOWN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %79

23:                                               ; preds = %4
  %24 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %25 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  store i8* null, i8** %11, align 8
  %29 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %30 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IW_ESSID_MAX_SIZE, align 8
  %33 = add nsw i64 %32, 1
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @E2BIG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %79

38:                                               ; preds = %28
  %39 = load i64, i64* @MAX_LEN_OF_SSID, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* @MEM_ALLOC_FLAG, align 4
  %42 = call i8* @kmalloc(i64 %40, i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* @MAX_LEN_OF_SSID, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @NdisZeroMemory(i8* %46, i64 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %53 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @NdisMoveMemory(i8* %50, i8* %51, i64 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @Set_SSID_Proc(i32 %56, i8* %57)
  %59 = load i64, i64* @FALSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %79

64:                                               ; preds = %45
  br label %68

65:                                               ; preds = %38
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %79

68:                                               ; preds = %64
  br label %78

69:                                               ; preds = %23
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @Set_SSID_Proc(i32 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i64, i64* @FALSE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %79

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %68
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %74, %65, %61, %35, %18
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(i32, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @NdisZeroMemory(i8*, i64) #1

declare dso_local i32 @NdisMoveMemory(i8*, i8*, i64) #1

declare dso_local i64 @Set_SSID_Proc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
