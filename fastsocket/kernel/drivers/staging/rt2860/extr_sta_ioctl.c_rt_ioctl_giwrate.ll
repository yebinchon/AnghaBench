; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_giwrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_giwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i64 }

@__const.rt_ioctl_giwrate.ralinkrate = private unnamed_addr constant [108 x i32] [i32 2, i32 4, i32 11, i32 22, i32 12, i32 18, i32 24, i32 36, i32 48, i32 72, i32 96, i32 108, i32 13, i32 26, i32 39, i32 52, i32 78, i32 104, i32 117, i32 130, i32 26, i32 52, i32 78, i32 104, i32 156, i32 208, i32 234, i32 260, i32 39, i32 78, i32 117, i32 156, i32 234, i32 312, i32 351, i32 390, i32 27, i32 54, i32 81, i32 108, i32 162, i32 216, i32 243, i32 270, i32 54, i32 108, i32 162, i32 216, i32 324, i32 432, i32 486, i32 540, i32 81, i32 162, i32 243, i32 324, i32 486, i32 648, i32 729, i32 810, i32 14, i32 29, i32 43, i32 57, i32 87, i32 115, i32 130, i32 144, i32 29, i32 59, i32 87, i32 115, i32 173, i32 230, i32 260, i32 288, i32 43, i32 87, i32 130, i32 173, i32 260, i32 317, i32 390, i32 433, i32 30, i32 60, i32 90, i32 120, i32 180, i32 240, i32 270, i32 300, i32 60, i32 120, i32 180, i32 240, i32 360, i32 480, i32 540, i32 600, i32 90, i32 180, i32 270, i32 360, i32 540, i32 720, i32 810, i32 900], align 16
@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PHY_11G = common dso_local global i64 0, align 8
@BSSID_WCID = common dso_local global i64 0, align 8
@MODE_OFDM = common dso_local global i64 0, align 8
@MODE_HTMIX = common dso_local global i64 0, align 8
@MODE_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_giwrate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca [108 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = bitcast [108 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([108 x i32]* @__const.rt_ioctl_giwrate.ralinkrate to i8*), i64 432, i1 false)
  store i32 108, i32* %12, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %21 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_14__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %25 = call i32 @DBGPRINT(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENETDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %148

28:                                               ; preds = %4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %28
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = call i64 @INFRA_ON(%struct.TYPE_14__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PHY_11G, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = load i64, i64* @BSSID_WCID, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MODE_OFDM, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %46, %39
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  br label %77

66:                                               ; preds = %46, %35, %28
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = load i64, i64* @BSSID_WCID, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  br label %77

77:                                               ; preds = %66, %59
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MODE_HTMIX, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = mul nsw i32 %87, 24
  %89 = add nsw i32 12, %88
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = mul nsw i32 %93, 48
  %95 = add nsw i32 %89, %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = add nsw i32 %95, %99
  store i32 %100, i32* %11, align 4
  br label %126

101:                                              ; preds = %77
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MODE_OFDM, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %11, align 4
  br label %125

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MODE_CCK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %119, %113
  br label %125

125:                                              ; preds = %124, %107
  br label %126

126:                                              ; preds = %125, %83
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [108 x i32], [108 x i32]* %14, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, 500000
  %142 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %143 = bitcast %union.iwreq_data* %142 to %struct.TYPE_24__*
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %146 = bitcast %union.iwreq_data* %145 to %struct.TYPE_24__*
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %136, %23
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @DBGPRINT(i32, i8*) #2

declare dso_local i64 @INFRA_ON(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
