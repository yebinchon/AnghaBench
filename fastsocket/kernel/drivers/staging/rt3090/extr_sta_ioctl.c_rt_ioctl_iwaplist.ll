; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_iwaplist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_iwaplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i8*, i32 }
%struct.iw_quality = type { i8*, i32 }

@IW_MAX_AP = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@MAC_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_iwaplist(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.TYPE_9__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %10, align 8
  %18 = load i32, i32* @IW_MAX_AP, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.sockaddr, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @IW_MAX_AP, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca %struct.iw_quality, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %27 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_9__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %31 = call i32 @DBGPRINT(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

34:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %83, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @IW_MAX_AP, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %86

47:                                               ; preds = %39
  %48 = load i32, i32* @ARPHRD_ETHER, align 4
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i64 %50
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i64 %54
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 16
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* @MAC_ADDR_LEN, align 4
  %67 = call i32 @memcpy(i8* %57, %struct.sockaddr** %65, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %24, i64 %70
  %72 = bitcast %struct.iw_quality* %71 to %struct.sockaddr*
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_quality(%struct.TYPE_9__* %68, %struct.sockaddr* %72, i32 %81)
  br label %83

83:                                               ; preds = %47
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %35

86:                                               ; preds = %46, %35
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %89 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = bitcast %struct.sockaddr* %21 to %struct.sockaddr**
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 16
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(i8* %90, %struct.sockaddr** %91, i32 %95)
  %97 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %98 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 16
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = bitcast %struct.iw_quality* %24 to %struct.sockaddr**
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 16
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i8* %103, %struct.sockaddr** %104, i32 %108)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %86, %29
  %111 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_9__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, %struct.sockaddr**, i32) #1

declare dso_local i32 @set_quality(%struct.TYPE_9__*, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
