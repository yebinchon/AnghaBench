; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32* }
%struct.ieee80211_tx_info = type { i32 }
%struct.mesh_path = type { i32, i32 }

@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@PREQ_Q_F_START = common dso_local global i32 0, align 4
@MESH_FRAME_QUEUE_LEN = common dso_local global i64 0, align 8
@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_nexthop_resolve(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.mesh_path*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ieee80211_is_qos_nullfunc(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

27:                                               ; preds = %2
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @mesh_nexthop_lookup(%struct.ieee80211_sub_if_data* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %98

35:                                               ; preds = %27
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %36, i32* %37)
  store %struct.mesh_path* %38, %struct.mesh_path** %8, align 8
  %39 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %40 = icmp ne %struct.mesh_path* %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %42, i32* %43)
  store %struct.mesh_path* %44, %struct.mesh_path** %8, align 8
  %45 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %46 = call i64 @IS_ERR(%struct.mesh_path* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @mesh_path_discard_frame(%struct.ieee80211_sub_if_data* %49, %struct.sk_buff* %50)
  %52 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %53 = call i32 @PTR_ERR(%struct.mesh_path* %52)
  store i32 %53, i32* %11, align 4
  br label %98

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %57 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %64 = load i32, i32* @PREQ_Q_F_START, align 4
  %65 = call i32 @mesh_queue_preq(%struct.mesh_path* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %68 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %67, i32 0, i32 1
  %69 = call i64 @skb_queue_len(i32* %68)
  %70 = load i64, i64* @MESH_FRAME_QUEUE_LEN, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %74 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %73, i32 0, i32 1
  %75 = call %struct.sk_buff* @skb_dequeue(i32* %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %9, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data* %82, %struct.sk_buff* %83)
  %85 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %86 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %85, i32 0, i32 1
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_queue_tail(i32* %86, %struct.sk_buff* %87)
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %76
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = call i32 @mesh_path_discard_frame(%struct.ieee80211_sub_if_data* %94, %struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %93, %76
  br label %98

98:                                               ; preds = %97, %48, %34
  %99 = call i32 (...) @rcu_read_unlock()
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %26
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @mesh_nexthop_lookup(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

declare dso_local i32 @mesh_path_discard_frame(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.mesh_path*) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
