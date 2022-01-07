; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_drop_unencrypted_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_drop_unencrypted_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_7__*, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*)* @ieee80211_drop_unencrypted_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_drop_unencrypted_mgmt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %7 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %4, align 8
  %13 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_7__* %15)
  store %struct.ieee80211_rx_status* %16, %struct.ieee80211_rx_status** %5, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %196

27:                                               ; preds = %1
  %28 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %195

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @WLAN_STA_MFP, align 4
  %37 = call i64 @test_sta_flag(i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %195

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ieee80211_has_protected(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i64 @ieee80211_is_unicast_robust_mgmt_frame(%struct.TYPE_7__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %43, %39
  %55 = phi i1 [ false, %43 ], [ false, %39 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ieee80211_is_deauth(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cfg80211_send_unprot_deauth(i32 %68, i64 %73, i32 %78)
  br label %102

80:                                               ; preds = %59
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @ieee80211_is_disassoc(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @cfg80211_send_unprot_disassoc(i32 %89, i64 %94, i32 %99)
  br label %101

101:                                              ; preds = %84, %80
  br label %102

102:                                              ; preds = %101, %63
  %103 = load i32, i32* @EACCES, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %196

105:                                              ; preds = %54
  %106 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = call i64 @ieee80211_is_multicast_robust_mgmt_frame(%struct.TYPE_7__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = call i64 @ieee80211_get_mmie_keyidx(%struct.TYPE_7__* %114)
  %116 = icmp slt i64 %115, 0
  br label %117

117:                                              ; preds = %111, %105
  %118 = phi i1 [ false, %105 ], [ %116, %111 ]
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %168

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  %124 = call i64 @ieee80211_is_deauth(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %133 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @cfg80211_send_unprot_deauth(i32 %131, i64 %136, i32 %141)
  br label %165

143:                                              ; preds = %122
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @ieee80211_is_disassoc(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %143
  %148 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %159 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @cfg80211_send_unprot_disassoc(i32 %152, i64 %157, i32 %162)
  br label %164

164:                                              ; preds = %147, %143
  br label %165

165:                                              ; preds = %164, %126
  %166 = load i32, i32* @EACCES, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %196

168:                                              ; preds = %117
  %169 = load i32, i32* %6, align 4
  %170 = call i64 @ieee80211_is_action(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %168
  %173 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %174 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %172
  %178 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %179 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %178, i32 0, i32 0
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to %struct.ieee80211_hdr*
  %184 = call i64 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr* %183)
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %177, %172, %168
  %187 = phi i1 [ false, %172 ], [ false, %168 ], [ %185, %177 ]
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32, i32* @EACCES, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %196

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %32, %27
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %191, %165, %102, %26
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_7__*) #1

declare dso_local i64 @test_sta_flag(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i64 @ieee80211_is_unicast_robust_mgmt_frame(%struct.TYPE_7__*) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @cfg80211_send_unprot_deauth(i32, i64, i32) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i32 @cfg80211_send_unprot_disassoc(i32, i64, i32) #1

declare dso_local i64 @ieee80211_is_multicast_robust_mgmt_frame(%struct.TYPE_7__*) #1

declare dso_local i64 @ieee80211_get_mmie_keyidx(%struct.TYPE_7__*) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_robust_mgmt_frame(%struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
