; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_IEEE11h.c_s_bRxTPCReq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_IEEE11h.c_s_bRxTPCReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, i32, i64, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { i32 }

@WLAN_A3FR_MAXLEN = common dso_local global i64 0, align 8
@WLAN_FTYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FSTYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_ADDR_LEN = common dso_local global i32 0, align 4
@WLAN_BSSID_LEN = common dso_local global i32 0, align 4
@WLAN_EID_TPC_REP = common dso_local global i32 0, align 4
@WLAN_HDR_ADDR3_LEN = common dso_local global i64 0, align 8
@CMD_STATUS_PENDING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_16__*, i32, i32)* @s_bRxTPCReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_bRxTPCReq(%struct.TYPE_20__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %11, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %17 = load i64, i64* @WLAN_A3FR_MAXLEN, align 8
  %18 = add i64 4, %17
  %19 = call i32 @memset(%struct.TYPE_19__* %16, i32 0, i64 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %21 = ptrtoint %struct.TYPE_19__* %20 to i64
  %22 = add i64 %21, 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %26 = ptrtoint %struct.TYPE_19__* %25 to i64
  %27 = add i64 %26, 4
  %28 = inttoptr i64 %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %10, align 8
  %29 = load i32, i32* @WLAN_FTYPE_MGMT, align 4
  %30 = call i32 @WLAN_SET_FC_FTYPE(i32 %29)
  %31 = load i32, i32* @WLAN_FSTYPE_ACTION, align 4
  %32 = call i32 @WLAN_SET_FC_FSTYPE(i32 %31)
  %33 = or i32 %30, %32
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WLAN_ADDR_LEN, align 4
  %46 = call i32 @memcpy(i32 %40, i32 %44, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CARDpGetCurrentAddress(i32 %53)
  %55 = load i32, i32* @WLAN_ADDR_LEN, align 4
  %56 = call i32 @memcpy(i32 %50, i32 %54, i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WLAN_BSSID_LEN, align 4
  %65 = call i32 @memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 3, i32* %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_18__*
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @WLAN_EID_TPC_REP, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 2, i32* %84, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @CARDbyGetTransmitPower(i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  switch i32 %92, label %136 [
    i32 130, label %93
    i32 131, label %99
    i32 132, label %105
    i32 133, label %111
    i32 134, label %117
    i32 135, label %123
    i32 128, label %129
    i32 129, label %135
  ]

93:                                               ; preds = %4
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 65, %94
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  br label %142

99:                                               ; preds = %4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 66, %100
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  br label %142

105:                                              ; preds = %4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 70, %106
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  br label %142

111:                                              ; preds = %4
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 74, %112
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  br label %142

117:                                              ; preds = %4
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 77, %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %142

123:                                              ; preds = %4
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 79, %124
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %142

129:                                              ; preds = %4
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 81, %130
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  br label %142

135:                                              ; preds = %4
  br label %136

136:                                              ; preds = %4, %135
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 82, %137
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %129, %123, %117, %111, %105, %99, %93
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  store i32 4, i32* %144, align 8
  %145 = load i64, i64* @WLAN_HDR_ADDR3_LEN, align 8
  %146 = sub i64 4, %145
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %153 = call i64 @csMgmt_xmit(i32 %151, %struct.TYPE_19__* %152)
  %154 = load i64, i64* @CMD_STATUS_PENDING, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %142
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %5, align 4
  br label %160

158:                                              ; preds = %142
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @WLAN_SET_FC_FTYPE(i32) #1

declare dso_local i32 @WLAN_SET_FC_FSTYPE(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @CARDpGetCurrentAddress(i32) #1

declare dso_local i32 @CARDbyGetTransmitPower(i32) #1

declare dso_local i64 @csMgmt_xmit(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
