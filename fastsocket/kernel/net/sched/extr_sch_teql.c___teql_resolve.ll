; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c___teql_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c___teql_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.teql_sched_data = type { %struct.neighbour* }
%struct.neighbour = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.neighbour* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*, %struct.net_device*)* @__teql_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__teql_resolve(%struct.sk_buff* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.teql_sched_data*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %13, i32 0)
  store %struct.netdev_queue* %14, %struct.netdev_queue** %8, align 8
  %15 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %16 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.teql_sched_data* @qdisc_priv(i32 %17)
  store %struct.teql_sched_data* %18, %struct.teql_sched_data** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_3__* @skb_dst(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.neighbour*, %struct.neighbour** %21, align 8
  store %struct.neighbour* %22, %struct.neighbour** %10, align 8
  %23 = load %struct.teql_sched_data*, %struct.teql_sched_data** %9, align 8
  %24 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %23, i32 0, i32 0
  %25 = load %struct.neighbour*, %struct.neighbour** %24, align 8
  store %struct.neighbour* %25, %struct.neighbour** %11, align 8
  %26 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %27 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp eq %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %127

33:                                               ; preds = %3
  %34 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %35 = icmp ne %struct.neighbour* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %38 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %41 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp eq %struct.TYPE_4__* %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %46 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %49 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %52 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @memcmp(i32 %47, i32 %50, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %60 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %59, i32 0, i32 4
  %61 = call i32 @atomic_inc(i32* %60)
  br label %78

62:                                               ; preds = %44, %36, %33
  %63 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %64 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %67 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = call %struct.neighbour* @__neigh_lookup_errno(%struct.TYPE_4__* %65, i32 %68, %struct.net_device* %69)
  store %struct.neighbour* %70, %struct.neighbour** %11, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %72 = call i64 @IS_ERR(%struct.neighbour* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %76 = call i32 @PTR_ERR(%struct.neighbour* %75)
  store i32 %76, i32* %4, align 4
  br label %127

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i64 @neigh_event_send(%struct.neighbour* %79, %struct.sk_buff* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %85 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %84, i32 0, i32 0
  %86 = call i32 @read_lock(i32* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ntohs(i32 %91)
  %93 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %94 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_hard_header(%struct.sk_buff* %87, %struct.net_device* %88, i32 %92, i32 %95, i32* null, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %101 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %100, i32 0, i32 0
  %102 = call i32 @read_unlock(i32* %101)
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %83
  %106 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %107 = call i32 @neigh_release(%struct.neighbour* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %127

110:                                              ; preds = %83
  %111 = load %struct.teql_sched_data*, %struct.teql_sched_data** %9, align 8
  %112 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %111, i32 0, i32 0
  %113 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %114 = call i32 @xchg(%struct.neighbour** %112, %struct.neighbour* %113)
  %115 = call i32 @teql_neigh_release(i32 %114)
  store i32 0, i32* %4, align 4
  br label %127

116:                                              ; preds = %78
  %117 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %118 = call i32 @neigh_release(%struct.neighbour* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = icmp eq %struct.sk_buff* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @EAGAIN, align 4
  %123 = sub nsw i32 0, %122
  br label %125

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi i32 [ %123, %121 ], [ 1, %124 ]
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %110, %105, %74, %30
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.teql_sched_data* @qdisc_priv(i32) #1

declare dso_local %struct.TYPE_3__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.neighbour* @__neigh_lookup_errno(%struct.TYPE_4__*, i32, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i64 @neigh_event_send(%struct.neighbour*, %struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @teql_neigh_release(i32) #1

declare dso_local i32 @xchg(%struct.neighbour**, %struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
