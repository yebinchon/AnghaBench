; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_sta_manage_reorder_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_sta_manage_reorder_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i64, i32, i32*, %struct.sk_buff** }
%struct.sk_buff = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, %struct.sk_buff*, %struct.sk_buff_head*)* @ieee80211_sta_manage_reorder_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_sta_manage_reorder_buf(%struct.ieee80211_sub_if_data* %0, %struct.tid_ampdu_rx* %1, %struct.sk_buff* %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.tid_ampdu_rx*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.tid_ampdu_rx* %1, %struct.tid_ampdu_rx** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %9, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %26 = and i32 %24, %25
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %11, align 4
  store i32 1, i32* %15, align 4
  %28 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %29 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %28, i32 0, i32 4
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %32 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %35 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @ieee80211_sn_less(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  br label %125

44:                                               ; preds = %4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i64 @ieee80211_sn_less(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @ieee80211_sn_sub(i32 %52, i32 %53)
  %55 = call i8* @ieee80211_sn_inc(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %58 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %61 = call i32 @ieee80211_release_reorder_frames(%struct.ieee80211_sub_if_data* %57, %struct.tid_ampdu_rx* %58, i32 %59, %struct.sk_buff_head* %60)
  br label %62

62:                                               ; preds = %51, %44
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %65 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ieee80211_sn_sub(i32 %63, i32 %66)
  %68 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %69 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = srem i32 %67, %70
  store i32 %71, i32* %14, align 4
  %72 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %73 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %72, i32 0, i32 6
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @dev_kfree_skb(%struct.sk_buff* %81)
  br label %125

83:                                               ; preds = %62
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %86 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %91 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %96 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @ieee80211_sn_inc(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %101 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %15, align 4
  br label %125

102:                                              ; preds = %89, %83
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %105 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %104, i32 0, i32 6
  %106 = load %struct.sk_buff**, %struct.sk_buff*** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %106, i64 %108
  store %struct.sk_buff* %103, %struct.sk_buff** %109, align 8
  %110 = load i32, i32* @jiffies, align 4
  %111 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %112 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %118 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %122 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %123 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %124 = call i32 @ieee80211_sta_reorder_release(%struct.ieee80211_sub_if_data* %121, %struct.tid_ampdu_rx* %122, %struct.sk_buff_head* %123)
  br label %125

125:                                              ; preds = %102, %94, %80, %41
  %126 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %127 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %126, i32 0, i32 4
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load i32, i32* %15, align 4
  ret i32 %129
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ieee80211_sn_less(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @ieee80211_sn_inc(i32) #1

declare dso_local i32 @ieee80211_sn_sub(i32, i32) #1

declare dso_local i32 @ieee80211_release_reorder_frames(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @ieee80211_sta_reorder_release(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
