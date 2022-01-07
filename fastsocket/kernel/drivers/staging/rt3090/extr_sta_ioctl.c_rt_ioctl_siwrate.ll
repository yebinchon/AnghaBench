; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rt_ioctl_siwrate::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"rt_ioctl_siwrate::(rate = %d, fixed = %d)\0A\00", align 1
@MCS_AUTO = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@PHY_11G = common dso_local global i64 0, align 8
@BSSID_WCID = common dso_local global i64 0, align 8
@MODE_OFDM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rt_ioctl_siwrate::(HtMcs=%d)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwrate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.TYPE_15__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %10, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.TYPE_16__*
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.TYPE_16__*
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %25 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_15__* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %29 = call i32 @DBGPRINT(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENETDOWN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %127

32:                                               ; preds = %4
  %33 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @DBGPRINT(i32 %33, i8* %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %75

41:                                               ; preds = %32
  %42 = load i8*, i8** @MCS_AUTO, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PHY_11G, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %41
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = load i64, i64* @BSSID_WCID, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MODE_OFDM, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %58, %41
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = call i32 @RTMPSetDesiredRates(%struct.TYPE_15__* %72, i32 -1)
  br label %74

74:                                               ; preds = %71, %58
  br label %126

75:                                               ; preds = %32
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %75
  %79 = load i32, i32* @FALSE, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PHY_11G, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %102, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load i64, i64* @BSSID_WCID, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MODE_OFDM, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %89, %78
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @RTMPSetDesiredRates(%struct.TYPE_15__* %103, i32 %104)
  br label %113

106:                                              ; preds = %89
  %107 = load i8*, i8** @MCS_AUTO, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  store i8* %107, i8** %112, align 8
  br label %113

113:                                              ; preds = %106, %102
  %114 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @DBGPRINT(i32 %114, i8* %120)
  br label %125

122:                                              ; preds = %75
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %127

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %74
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %122, %27
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_15__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @RTMPSetDesiredRates(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
