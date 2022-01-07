; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

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
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_7__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  store i32 -1, i32* %11, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %16 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_7__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %20 = call i32 @DBGPRINT(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENETDOWN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %76

23:                                               ; preds = %4
  %24 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %25 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %76

31:                                               ; preds = %23
  %32 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %33 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %38 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 1000
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %43 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %52

45:                                               ; preds = %36, %31
  %46 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %47 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 100
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @MAP_KHZ_TO_CHANNEL_ID(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @ChannelSanity(%struct.TYPE_7__* %53, i32 %54)
  %56 = load i64, i64* @TRUE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %64 = load i32, i32* @SIOCSIWFREQ, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @DBGPRINT(i32 %63, i8* %70)
  br label %75

72:                                               ; preds = %52
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %72, %28, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_7__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @MAP_KHZ_TO_CHANNEL_ID(i32, i32) #1

declare dso_local i64 @ChannelSanity(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
