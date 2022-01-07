; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tkip_mic_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tkip_mic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.ieee80211_local* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_TKIP_MIC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i8*, i32)* @ieee80211_if_parse_tkip_mic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_if_parse_tkip_mic_test(%struct.ieee80211_sub_if_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %8, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @mac_pton(i8* %22, i32* %21)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %175

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %30 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %175

35:                                               ; preds = %28
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 24
  %41 = add nsw i64 %40, 100
  %42 = call %struct.sk_buff* @dev_alloc_skb(i64 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %175

48:                                               ; preds = %35
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @skb_reserve(%struct.sk_buff* %49, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = call %struct.ieee80211_hdr* @skb_put(%struct.sk_buff* %55, i32 24)
  store %struct.ieee80211_hdr* %56, %struct.ieee80211_hdr** %12, align 8
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %58 = call i32 @memset(%struct.ieee80211_hdr* %57, i32 0, i32 24)
  %59 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %60 = load i32, i32* @IEEE80211_STYPE_DATA, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @cpu_to_le16(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %153 [
    i32 129, label %67
    i32 128, label %95
  ]

67:                                               ; preds = %48
  %68 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i32 %74, i32* %21, i32 %75)
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i32 @memcpy(i32 %79, i32* %83, i32 %84)
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i32 %88, i32* %92, i32 %93)
  br label %158

95:                                               ; preds = %48
  %96 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %97 = call i32 @cpu_to_le16(i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %95
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = call i32 @dev_kfree_skb(%struct.sk_buff* %117)
  %119 = load i32, i32* @ENOTCONN, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %175

121:                                              ; preds = %95
  %122 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %123 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(i32 %124, i32* %131, i32 %132)
  %134 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %135 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @ETH_ALEN, align 4
  %142 = call i32 @memcpy(i32 %136, i32* %140, i32 %141)
  %143 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ETH_ALEN, align 4
  %147 = call i32 @memcpy(i32 %145, i32* %21, i32 %146)
  %148 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %158

153:                                              ; preds = %48
  %154 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %155 = call i32 @dev_kfree_skb(%struct.sk_buff* %154)
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %175

158:                                              ; preds = %121, %67
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %161 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = call %struct.ieee80211_hdr* @skb_put(%struct.sk_buff* %162, i32 50)
  %164 = call i32 @memset(%struct.ieee80211_hdr* %163, i32 0, i32 50)
  %165 = load i32, i32* @IEEE80211_TX_INTFL_TKIP_MIC_FAILURE, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %167 = call %struct.TYPE_12__* @IEEE80211_SKB_CB(%struct.sk_buff* %166)
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 4
  %171 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %173 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %171, %struct.sk_buff* %172)
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %175

175:                                              ; preds = %158, %153, %111, %45, %32, %25
  %176 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mac_pton(i8*, i32*) #2

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #2

declare dso_local %struct.ieee80211_hdr* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @memset(%struct.ieee80211_hdr*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_12__* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
