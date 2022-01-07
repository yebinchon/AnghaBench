; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_mesh_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_mesh_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@RX_DROP_MONITOR = common dso_local global i32 0, align 4
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@IEEE80211_MIN_ACTION_SIZE = common dso_local global i64 0, align 8
@WLAN_CATEGORY_MESH_ACTION = common dso_local global i64 0, align 8
@WLAN_CATEGORY_SELF_PROTECTED = common dso_local global i64 0, align 8
@RX_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*)* @ieee80211_rx_mesh_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_rx_mesh_check(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %8 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %4, align 8
  %14 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ieee80211_is_data(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_multicast_ether_addr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ieee80211_has_tods(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ieee80211_has_fromds(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %44, i32* %2, align 4
  br label %159

45:                                               ; preds = %37
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @ether_addr_equal(i32 %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %53, i32* %2, align 4
  br label %159

54:                                               ; preds = %45
  br label %73

55:                                               ; preds = %25
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ieee80211_has_a4(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %62, i32* %2, align 4
  br label %159

63:                                               ; preds = %55
  %64 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @ether_addr_equal(i32 %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %71, i32* %2, align 4
  br label %159

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @sta_plink_state(i32 %82)
  %84 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %157

86:                                               ; preds = %79, %74
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ieee80211_is_mgmt(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %93, i32* %2, align 4
  br label %159

94:                                               ; preds = %86
  %95 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ieee80211_is_action(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  %101 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IEEE80211_MIN_ACTION_SIZE, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %109, i32* %2, align 4
  br label %159

110:                                              ; preds = %100
  %111 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %112 = bitcast %struct.ieee80211_hdr* %111 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %112, %struct.ieee80211_mgmt** %6, align 8
  %113 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %7, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @WLAN_CATEGORY_MESH_ACTION, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @WLAN_CATEGORY_SELF_PROTECTED, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %126, i32* %2, align 4
  br label %159

127:                                              ; preds = %121, %110
  %128 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %128, i32* %2, align 4
  br label %159

129:                                              ; preds = %94
  %130 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @ieee80211_is_probe_req(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %129
  %136 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @ieee80211_is_probe_resp(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %135
  %142 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %143 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ieee80211_is_beacon(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %149 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @ieee80211_is_auth(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147, %141, %135, %129
  %154 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %154, i32* %2, align 4
  br label %159

155:                                              ; preds = %147
  %156 = load i32, i32* @RX_DROP_MONITOR, align 4
  store i32 %156, i32* %2, align 4
  br label %159

157:                                              ; preds = %79
  %158 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %155, %153, %127, %125, %108, %92, %70, %61, %52, %43
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_has_tods(i32) #1

declare dso_local i32 @ieee80211_has_fromds(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i8*) #1

declare dso_local i32 @ieee80211_has_a4(i32) #1

declare dso_local i64 @sta_plink_state(i32) #1

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_probe_req(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
