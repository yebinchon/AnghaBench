; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@CNTL_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"!!! MLME busy, reset MLME state machine !!!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MAC_ADDR_LEN = common dso_local global i32 0, align 4
@MLME_CNTL_STATE_MACHINE = common dso_local global i32 0, align 4
@OID_802_11_BSSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"IOCTL::SIOCSIWAP %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_12__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %15 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %16 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_12__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %20 = call i32 @DBGPRINT(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENETDOWN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CNTL_IDLE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = call i32 @RTMP_MLME_RESET_STATE_MACHINE(%struct.TYPE_12__* %32)
  %34 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %35 = call i32 @DBGPRINT(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %23
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 32, i32* %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @MAC_ADDR_LEN, align 4
  %46 = call i32 @memset(i32* %44, i32 0, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MAC_ADDR_LEN, align 4
  %52 = call i32 @memcpy(i32* %47, i32 %50, i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = load i32, i32* @MLME_CNTL_STATE_MACHINE, align 4
  %55 = load i32, i32* @OID_802_11_BSSID, align 4
  %56 = bitcast i32** %11 to i32*
  %57 = call i32 @MlmeEnqueue(%struct.TYPE_12__* %53, i32 %54, i32 %55, i32 8, i32* %56)
  %58 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @DBGPRINT(i32 %58, i8* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %36, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_12__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @RTMP_MLME_RESET_STATE_MACHINE(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MlmeEnqueue(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
