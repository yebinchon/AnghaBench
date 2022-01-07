; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_tx.c_ieee80211_tx_query_agg_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_tx.c_ieee80211_tx_query_agg_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_20__*)* }
%struct.TYPE_21__ = type { i32 }
%struct.ieee80211_device = type { i64, i64, i64, i32, i32 (i32)*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.ieee80211_hdr_1addr = type { i32 }

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
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %3
  br label %171

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @IsQoSDataFrame(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %171

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
  br label %171

47:                                               ; preds = %40
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 4
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %50(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %171

57:                                               ; preds = %47
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %144

62:                                               ; preds = %57
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %64 = bitcast %struct.TYPE_18__** %8 to i32*
  %65 = load %struct.ieee80211_hdr_1addr*, %struct.ieee80211_hdr_1addr** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr_1addr, %struct.ieee80211_hdr_1addr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TX_DIR, align 4
  %72 = call i32 @GetTs(%struct.ieee80211_device* %63, i32* %64, i32 %67, i32 %70, i32 %71, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %62
  %75 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %171

76:                                               ; preds = %62
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @KEY_TYPE_NA, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %98

94:                                               ; preds = %87, %82
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = call i32 @TsStartAddBaProcess(%struct.ieee80211_device* %95, %struct.TYPE_18__* %96)
  br label %98

98:                                               ; preds = %94, %93
  br label %145

99:                                               ; preds = %76
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  %115 = srem i32 %114, 4096
  %116 = call i64 @SN_LESS(i32 %110, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %104
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  br label %122

121:                                              ; preds = %104
  br label %145

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %99
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %126 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IW_MODE_INFRA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %130, %124
  br label %144

144:                                              ; preds = %143, %57
  br label %145

145:                                              ; preds = %144, %121, %98
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %170 [
    i32 130, label %149
    i32 128, label %150
    i32 129, label %163
  ]

149:                                              ; preds = %145
  br label %170

150:                                              ; preds = %145
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %170

163:                                              ; preds = %145
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  store i32 0, i32* %167, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %145, %163, %150, %149
  br label %171

171:                                              ; preds = %170, %74, %56, %46, %33, %26
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
