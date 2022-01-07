; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwfrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }

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
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %17 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_5__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %21 = call i32 @DBGPRINT(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %4
  %25 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  store i32 %30, i32* %11, align 4
  br label %61

31:                                               ; preds = %24
  %32 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %45 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, -2
  %48 = call i32 @__cpu_to_le16(i32 %47)
  store i32 %48, i32* %11, align 4
  br label %60

49:                                               ; preds = %37, %31
  %50 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  store i32 %55, i32* %11, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %66

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %56, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
