; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_iwaplist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_iwaplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i8*, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
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
  %10 = alloca %struct.TYPE_8__*, align 8
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
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load i32, i32* @IW_MAX_AP, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca %struct.sockaddr, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @IW_MAX_AP, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca %struct.iw_quality, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %28 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_8__* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %32 = call i32 @DBGPRINT(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %111

35:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %84, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @IW_MAX_AP, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %87

48:                                               ; preds = %40
  %49 = load i32, i32* @ARPHRD_ETHER, align 4
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i64 %51
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i64 %55
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 16
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* @MAC_ADDR_LEN, align 4
  %68 = call i32 @memcpy(i8* %58, %struct.sockaddr** %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %25, i64 %71
  %73 = bitcast %struct.iw_quality* %72 to %struct.sockaddr*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @set_quality(%struct.TYPE_8__* %69, %struct.sockaddr* %73, i32 %82)
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %36

87:                                               ; preds = %47, %36
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %90 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast %struct.sockaddr* %22 to %struct.sockaddr**
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 16
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i8* %91, %struct.sockaddr** %92, i32 %96)
  %98 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %99 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 16
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = bitcast %struct.iw_quality* %25 to %struct.sockaddr**
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 16
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i8* %104, %struct.sockaddr** %105, i32 %109)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %111

111:                                              ; preds = %87, %30
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @DBGPRINT(i32, i8*) #2

declare dso_local i32 @memcpy(i8*, %struct.sockaddr**, i32) #2

declare dso_local i32 @set_quality(%struct.TYPE_8__*, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
