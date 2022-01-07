; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_connected_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_connected_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.dst_entry = type { %struct.neighbour* }
%struct.neighbour = type { %struct.TYPE_2__*, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*)* }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_connected_output(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %7)
  store %struct.dst_entry* %8, %struct.dst_entry** %4, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %9, i32 0, i32 0
  %11 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  store %struct.neighbour* %11, %struct.neighbour** %5, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i32 @skb_network_offset(%struct.sk_buff* %16)
  %18 = call i32 @__skb_pull(%struct.sk_buff* %15, i32 %17)
  %19 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 1
  %21 = call i32 @read_lock_bh(i32* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  %28 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_hard_header(%struct.sk_buff* %22, %struct.net_device* %23, i32 %27, i32 %30, i32* null, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %36 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %35, i32 0, i32 1
  %37 = call i32 @read_unlock_bh(i32* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %1
  %41 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %42 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %47 = call i32 %45(%struct.sk_buff* %46)
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %1
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
