; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_parse_tx_radiotap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_parse_tx_radiotap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_radiotap_iterator = type { i32, i32*, i64 }
%struct.ieee80211_radiotap_header = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_DONTFRAG = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_FCS = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i64 0, align 8
@IEEE80211_RADIOTAP_F_WEP = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_FRAG = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_NOACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ieee80211_parse_tx_radiotap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_parse_tx_radiotap(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_radiotap_iterator, align 8
  %5 = alloca %struct.ieee80211_radiotap_header*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %12, %struct.ieee80211_radiotap_header** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %6, align 8
  %15 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator* %4, %struct.ieee80211_radiotap_header* %15, i64 %18, i32* null)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %21 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %109, %35, %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %110

31:                                               ; preds = %27
  %32 = call i32 @ieee80211_radiotap_iterator_next(%struct.ieee80211_radiotap_iterator* %4)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %27

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %108 [
    i32 129, label %39
    i32 128, label %93
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_RADIOTAP_F_FCS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FCS_LEN, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %121

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FCS_LEN, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i32 @skb_trim(%struct.sk_buff* %57, i64 %62)
  br label %64

64:                                               ; preds = %56, %39
  %65 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IEEE80211_RADIOTAP_F_WEP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IEEE80211_RADIOTAP_F_FRAG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %78
  br label %109

93:                                               ; preds = %36
  %94 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @get_unaligned_le16(i32* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_NOACK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %103 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %93
  br label %109

108:                                              ; preds = %36
  br label %109

109:                                              ; preds = %108, %107, %92
  br label %27

110:                                              ; preds = %27
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @ENOENT, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %121

116:                                              ; preds = %110
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %4, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @skb_pull(%struct.sk_buff* %117, i64 %119)
  store i32 1, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %115, %55
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_header*, i64, i32*) #1

declare dso_local i32 @ieee80211_radiotap_iterator_next(%struct.ieee80211_radiotap_iterator*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
