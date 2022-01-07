; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"==>rt_ioctl_siwfreq::SIOCSIWFREQ[cmd=0x%x] (Channel=%d)\0A\00", align 1
@SIOCSIWFREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  store i32 -1, i32* %11, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %17 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_6__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %21 = call i32 @DBGPRINT(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %77

24:                                               ; preds = %4
  %25 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %26 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %77

32:                                               ; preds = %24
  %33 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %34 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %39 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 1000
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %44 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  br label %53

46:                                               ; preds = %37, %32
  %47 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %48 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 100
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @MAP_KHZ_TO_CHANNEL_ID(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @ChannelSanity(%struct.TYPE_6__* %54, i32 %55)
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %65 = load i32, i32* @SIOCSIWFREQ, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @DBGPRINT(i32 %64, i8* %71)
  br label %76

73:                                               ; preds = %53
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %73, %29, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @MAP_KHZ_TO_CHANNEL_ID(i32, i32) #1

declare dso_local i64 @ChannelSanity(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
