; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_reassemble_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_reassemble_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_fragment_entry = type { i32, i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_fragment_entry* }
%struct.ieee80211_hdr = type { i32, i32, i32 }

@IEEE80211_FRAGMENT_MAX = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_fragment_entry* (%struct.ieee80211_sub_if_data*, i32, i32, i32, %struct.ieee80211_hdr*)* @ieee80211_reassemble_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_fragment_entry* @ieee80211_reassemble_find(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3, %struct.ieee80211_hdr* %4) #0 {
  %6 = alloca %struct.ieee80211_fragment_entry*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ieee80211_fragment_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_hdr* %4, %struct.ieee80211_hdr** %11, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %117, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @IEEE80211_FRAGMENT_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %120

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @IEEE80211_FRAGMENT_MAX, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 1
  %34 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %34, i64 %36
  store %struct.ieee80211_fragment_entry* %37, %struct.ieee80211_fragment_entry** %12, align 8
  %38 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %39 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %38, i32 0, i32 3
  %40 = call i64 @skb_queue_empty(%struct.TYPE_5__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %31
  %43 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %44 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %56 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %48, %42, %31
  br label %117

62:                                               ; preds = %54
  %63 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %64 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %69, %struct.ieee80211_hdr** %15, align 8
  %70 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %71 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %72, %75
  %77 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %78 = call i32 @cpu_to_le16(i32 %77)
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %62
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ether_addr_equal(i32 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %95 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ether_addr_equal(i32 %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90, %81, %62
  br label %117

100:                                              ; preds = %90
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %103 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @HZ, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = call i64 @time_after(i32 %101, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %113 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %112, i32 0, i32 3
  %114 = call i32 @__skb_queue_purge(%struct.TYPE_5__* %113)
  br label %117

115:                                              ; preds = %100
  %116 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  store %struct.ieee80211_fragment_entry* %116, %struct.ieee80211_fragment_entry** %6, align 8
  br label %121

117:                                              ; preds = %111, %99, %61
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %19

120:                                              ; preds = %19
  store %struct.ieee80211_fragment_entry* null, %struct.ieee80211_fragment_entry** %6, align 8
  br label %121

121:                                              ; preds = %120, %115
  %122 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %6, align 8
  ret %struct.ieee80211_fragment_entry* %122
}

declare dso_local i64 @skb_queue_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @__skb_queue_purge(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
