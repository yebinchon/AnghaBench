; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_setparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 (%struct.TYPE_7__*, i8*)* }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { %struct.TYPE_7__* }
%struct.iw_request_info = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@INT_MAIN = common dso_local global i32 0, align 4
@MAIN_MBSSID = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@RTMP_PRIVATE_SUPPORT_PROC = common dso_local global %struct.TYPE_9__* null, align 8
@PRTMP_PRIVATE_SET_PROC = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"===>rt_ioctl_setparam:: (iwpriv) Not Support Set Command [%s=%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i8*, i8*)* @rt_ioctl_setparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_ioctl_setparam(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @INT_MAIN, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MAIN_MBSSID, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %32 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_7__* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %36 = call i32 @DBGPRINT(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENETDOWN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %114

39:                                               ; preds = %4
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %114

46:                                               ; preds = %39
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @rtstrchr(i8* %47, i8 signext 61)
  store i8* %48, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %13, align 8
  store i8 0, i8* %51, align 1
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %114

59:                                               ; preds = %53
  %60 = load i8*, i8** %13, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %114

70:                                               ; preds = %63, %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RTMP_PRIVATE_SUPPORT_PROC, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  br label %72

72:                                               ; preds = %97, %70
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %78, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 %87(%struct.TYPE_7__* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %92, %84
  br label %100

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 1
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  br label %72

100:                                              ; preds = %95, %72
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PRTMP_PRIVATE_SET_PROC, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @DBGPRINT(i32 %108, i8* %110)
  br label %112

112:                                              ; preds = %105, %100
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %67, %56, %43, %34
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i8* @rtstrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
