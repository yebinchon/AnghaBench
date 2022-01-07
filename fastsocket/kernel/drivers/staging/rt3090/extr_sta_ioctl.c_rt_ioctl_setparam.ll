; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_setparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 (%struct.TYPE_8__*, i8*)* }
%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@INT_MAIN = common dso_local global i32 0, align 4
@MAIN_MBSSID = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SiteSurvey\00", align 1
@RTMP_PRIVATE_SUPPORT_PROC = common dso_local global %struct.TYPE_10__* null, align 8
@PRTMP_PRIVATE_SET_PROC = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"===>rt_ioctl_setparam:: (iwpriv) Not Support Set Command [%s=%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i8*, i8*)* @rt_ioctl_setparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_ioctl_setparam(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.TYPE_8__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENETDOWN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %112

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %11, align 8
  %28 = load i32, i32* @INT_MAIN, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @MAIN_MBSSID, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %36 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_8__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %40 = call i32 @DBGPRINT(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENETDOWN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %112

43:                                               ; preds = %23
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %112

50:                                               ; preds = %43
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @rtstrchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  store i8 0, i8* %55, align 1
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %112

67:                                               ; preds = %60, %57
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RTMP_PRIVATE_SUPPORT_PROC, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  br label %70

70:                                               ; preds = %95, %68
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %76, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 %85(%struct.TYPE_8__* %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %90, %82
  br label %98

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 1
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  br label %70

98:                                               ; preds = %93, %70
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PRTMP_PRIVATE_SET_PROC, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @DBGPRINT(i32 %106, i8* %108)
  br label %110

110:                                              ; preds = %103, %98
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %64, %47, %38, %20
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_8__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i8* @rtstrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
