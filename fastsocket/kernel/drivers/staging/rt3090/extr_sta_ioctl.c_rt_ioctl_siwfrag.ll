; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwfrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwfrag(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_6__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %16 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_6__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %20 = call i32 @DBGPRINT(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENETDOWN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  store i32 %29, i32* %11, align 4
  br label %60

30:                                               ; preds = %23
  %31 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %32 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %38 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36, %30
  %43 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %44 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -2
  %47 = call i32 @__cpu_to_le16(i32 %46)
  store i32 %47, i32* %11, align 4
  br label %59

48:                                               ; preds = %36
  %49 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %50 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  store i32 %54, i32* %11, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %65

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %55, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_6__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
