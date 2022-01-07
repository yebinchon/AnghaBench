; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_tx.c_ieee80211_query_protectionmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_tx.c_ieee80211_query_protectionmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64 }
%struct.sk_buff = type { i64, i64 }

@IEEE_N_24G = common dso_local global i64 0, align 8
@MGN_24M = common dso_local global i8* null, align 8
@HT_IOT_ACT_FORCED_CTS2SELF = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_query_protectionmode(%struct.ieee80211_device* %0, %struct.TYPE_6__* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  br label %202

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 16
  %34 = call i64 @is_broadcast_ether_addr(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %202

37:                                               ; preds = %29
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IEEE_N_24G, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  store i32 1, i32* %53, align 8
  %54 = load i8*, i8** @MGN_24M, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  br label %72

57:                                               ; preds = %43
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load i8*, i8** @MGN_24M, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71, %51
  br label %202

73:                                               ; preds = %37
  %74 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %7, align 8
  br label %77

77:                                               ; preds = %73
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store i32 1, i32* %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load i8*, i8** @MGN_24M, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  br label %171

91:                                               ; preds = %77
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %8, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %123, label %115

115:                                              ; preds = %112, %101
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %129

123:                                              ; preds = %120, %112, %109
  %124 = load i8*, i8** @MGN_24M, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  br label %171

129:                                              ; preds = %120, %115
  br label %130

130:                                              ; preds = %129, %96, %91
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load i8*, i8** @MGN_24M, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 7
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  store i32 1, i32* %143, align 8
  br label %171

144:                                              ; preds = %130
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i8*, i8** @MGN_24M, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 7
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  store i32 0, i32* %154, align 8
  br label %171

155:                                              ; preds = %144
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @HT_IOT_ACT_FORCED_CTS2SELF, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load i8*, i8** @MGN_24M, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 7
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i32 1, i32* %169, align 8
  br label %171

170:                                              ; preds = %155
  br label %191

171:                                              ; preds = %162, %149, %138, %123, %83
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %174 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 5
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %172
  %184 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %185 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @IW_MODE_MASTER, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %191

190:                                              ; preds = %183
  br label %202

191:                                              ; preds = %189, %170
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 4
  store i32 0, i32* %193, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  store i32 0, i32* %195, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 7
  store i8* null, i8** %197, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 6
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %191, %190, %72, %36, %28
  ret void
}

declare dso_local i64 @is_broadcast_ether_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
