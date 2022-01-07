; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_siwrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_siwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_23__, %struct.TYPE_20__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

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
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %10, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_15__*
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %21 = bitcast %union.iwreq_data* %20 to %struct.TYPE_15__*
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %26 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_14__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %30 = call i32 @DBGPRINT(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENETDOWN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %132

33:                                               ; preds = %4
  %34 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @DBGPRINT(i32 %34, i8* %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %78

42:                                               ; preds = %33
  %43 = load i8*, i8** @MCS_AUTO, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i8* %43, i8** %48, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PHY_11G, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %72, label %59

59:                                               ; preds = %42
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = load i64, i64* @BSSID_WCID, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MODE_OFDM, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59, %42
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %74 = call i32 @RTMPSetDesiredRates(%struct.TYPE_14__* %73, i32 -1)
  br label %75

75:                                               ; preds = %72, %59
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = call i32 @SetCommonHT(%struct.TYPE_14__* %76)
  br label %131

78:                                               ; preds = %33
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %78
  %82 = load i32, i32* @FALSE, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PHY_11G, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %105, label %92

92:                                               ; preds = %81
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load i64, i64* @BSSID_WCID, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MODE_OFDM, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %92, %81
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @RTMPSetDesiredRates(%struct.TYPE_14__* %106, i32 %107)
  br label %118

109:                                              ; preds = %92
  %110 = load i8*, i8** @MCS_AUTO, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  store i8* %110, i8** %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %117 = call i32 @SetCommonHT(%struct.TYPE_14__* %116)
  br label %118

118:                                              ; preds = %109, %105
  %119 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @DBGPRINT(i32 %119, i8* %125)
  br label %130

127:                                              ; preds = %78
  %128 = load i32, i32* @EOPNOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %132

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %75
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %127, %28
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @RTMPSetDesiredRates(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SetCommonHT(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
