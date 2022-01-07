; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_crypto_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_crypto_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.sk_buff*, i32, i32, %struct.TYPE_2__* }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@WEP_IV_LEN = common dso_local global i64 0, align 8
@WEP_ICV_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_wep_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %8 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %8, i32 0, i32 0
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %11)
  store %struct.ieee80211_rx_status* %12, %struct.ieee80211_rx_status** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %6, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ieee80211_is_data(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ieee80211_is_auth(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %28, i32* %2, align 4
  br label %149

29:                                               ; preds = %23, %1
  %30 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %29
  %37 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = call i64 @skb_linearize(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %43, i32* %2, align 4
  br label %149

44:                                               ; preds = %36
  %45 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %50, i32 0, i32 0
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  %53 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ieee80211_wep_is_weak_iv(%struct.sk_buff* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %49, %44
  %66 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  %72 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ieee80211_wep_decrypt(i32 %68, %struct.sk_buff* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %78, i32* %2, align 4
  br label %149

79:                                               ; preds = %65
  br label %147

80:                                               ; preds = %29
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %146, label %87

87:                                               ; preds = %80
  %88 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @ieee80211_hdrlen(i32 %91)
  %93 = load i64, i64* @WEP_IV_LEN, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @pskb_may_pull(%struct.sk_buff* %90, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %98, i32* %2, align 4
  br label %149

99:                                               ; preds = %87
  %100 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = icmp ne %struct.TYPE_2__* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %105, i32 0, i32 0
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  %108 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @ieee80211_wep_is_weak_iv(%struct.sk_buff* %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %104, %99
  %121 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %122 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %124, i32 0, i32 0
  %126 = load %struct.sk_buff*, %struct.sk_buff** %125, align 8
  %127 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ieee80211_wep_remove_iv(i32 %123, %struct.sk_buff* %126, i32 %129)
  %131 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %132 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %131, i32 0, i32 0
  %133 = load %struct.sk_buff*, %struct.sk_buff** %132, align 8
  %134 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %134, i32 0, i32 0
  %136 = load %struct.sk_buff*, %struct.sk_buff** %135, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @WEP_ICV_LEN, align 8
  %140 = sub nsw i64 %138, %139
  %141 = call i64 @pskb_trim(%struct.sk_buff* %133, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %120
  %144 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %144, i32* %2, align 4
  br label %149

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145, %80
  br label %147

147:                                              ; preds = %146, %79
  %148 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %143, %97, %77, %42, %27
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_auth(i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_wep_is_weak_iv(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_wep_decrypt(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_wep_remove_iv(i32, %struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
