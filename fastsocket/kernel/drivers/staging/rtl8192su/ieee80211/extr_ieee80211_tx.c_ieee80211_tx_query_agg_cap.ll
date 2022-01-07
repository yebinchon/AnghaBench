; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_tx.c_ieee80211_tx_query_agg_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_tx.c_ieee80211_tx_query_agg_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_20__*)* }
%struct.TYPE_21__ = type { i32 }
%struct.ieee80211_device = type { i64, i64, i64, i32, i32 (i32)*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.ieee80211_hdr_1addr = type { i32 }

@HT_IOT_ACT_TX_NO_AGGREGATION = common dso_local global i32 0, align 4
@TX_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"===>can't get TS\0A\00", align 1
@KEY_TYPE_NA = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@Adapter = common dso_local global %struct.TYPE_20__* null, align 8
@pTcb = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tx_query_agg_cap(%struct.ieee80211_device* %0, %struct.sk_buff* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.ieee80211_hdr_1addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 5
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr_1addr*
  store %struct.ieee80211_hdr_1addr* %16, %struct.ieee80211_hdr_1addr** %9, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %3
  br label %179

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @IsQoSDataFrame(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %179

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_hdr_1addr*, %struct.ieee80211_hdr_1addr** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr_1addr, %struct.ieee80211_hdr_1addr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_multicast_ether_addr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_hdr_1addr*, %struct.ieee80211_hdr_1addr** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr_1addr, %struct.ieee80211_hdr_1addr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @is_broadcast_ether_addr(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  br label %179

47:                                               ; preds = %40
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HT_IOT_ACT_TX_NO_AGGREGATION, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %179

55:                                               ; preds = %47
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 4
  %58 = load i32 (i32)*, i32 (i32)** %57, align 8
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %58(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %179

65:                                               ; preds = %55
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %152

70:                                               ; preds = %65
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %72 = bitcast %struct.TYPE_18__** %8 to i32*
  %73 = load %struct.ieee80211_hdr_1addr*, %struct.ieee80211_hdr_1addr** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr_1addr, %struct.ieee80211_hdr_1addr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TX_DIR, align 4
  %80 = call i32 @GetTs(%struct.ieee80211_device* %71, i32* %72, i32 %75, i32 %78, i32 %79, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %70
  %83 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %179

84:                                               ; preds = %70
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @KEY_TYPE_NA, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %106

102:                                              ; preds = %95, %90
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = call i32 @TsStartAddBaProcess(%struct.ieee80211_device* %103, %struct.TYPE_18__* %104)
  br label %106

106:                                              ; preds = %102, %101
  br label %153

107:                                              ; preds = %84
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %107
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  %123 = srem i32 %122, 4096
  %124 = call i64 @SN_LESS(i32 %118, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %112
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  br label %130

129:                                              ; preds = %112
  br label %153

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %107
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %134 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IW_MODE_INFRA, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %138, %132
  br label %152

152:                                              ; preds = %151, %65
  br label %153

153:                                              ; preds = %152, %129, %106
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  switch i32 %156, label %178 [
    i32 130, label %157
    i32 128, label %158
    i32 129, label %171
  ]

157:                                              ; preds = %153
  br label %178

158:                                              ; preds = %153
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %178

171:                                              ; preds = %153
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  store i32 0, i32* %175, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %153, %171, %158, %157
  br label %179

179:                                              ; preds = %178, %82, %64, %54, %46, %33, %26
  ret void
}

declare dso_local i32 @IsQoSDataFrame(i64) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @GetTs(%struct.ieee80211_device*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @TsStartAddBaProcess(%struct.ieee80211_device*, %struct.TYPE_18__*) #1

declare dso_local i64 @SN_LESS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
