; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_siwap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_siwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32 }

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
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %16 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %17 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_11__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %21 = call i32 @DBGPRINT(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CNTL_IDLE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = call i32 @RT28XX_MLME_RESET_STATE_MACHINE(%struct.TYPE_11__* %33)
  %35 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %36 = call i32 @DBGPRINT(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 32, i32* %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @MAC_ADDR_LEN, align 4
  %47 = call i32 @memset(i32* %45, i32 0, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAC_ADDR_LEN, align 4
  %53 = call i32 @memcpy(i32* %48, i32 %51, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = load i32, i32* @MLME_CNTL_STATE_MACHINE, align 4
  %56 = load i32, i32* @OID_802_11_BSSID, align 4
  %57 = bitcast i32** %11 to i32*
  %58 = call i32 @MlmeEnqueue(%struct.TYPE_11__* %54, i32 %55, i32 %56, i32 8, i32* %57)
  %59 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @DBGPRINT(i32 %59, i8* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %37, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @RT28XX_MLME_RESET_STATE_MACHINE(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MlmeEnqueue(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
