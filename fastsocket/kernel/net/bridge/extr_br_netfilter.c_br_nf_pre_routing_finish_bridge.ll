; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing_finish_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing_finish_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dst_entry = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*)* }

@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@BRNF_PKT_TYPE = common dso_local global i32 0, align 4
@BRNF_NF_BRIDGE_PREROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @br_nf_pre_routing_finish_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing_finish_bridge(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PACKET_OTHERHOST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @PACKET_HOST, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %10, %1
  %22 = load i32, i32* @BRNF_NF_BRIDGE_PREROUTING, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @bridge_parent(i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %21
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %40)
  store %struct.dst_entry* %41, %struct.dst_entry** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @nf_bridge_pull_encap_header(%struct.sk_buff* %42)
  %44 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %45 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %50 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i32 @neigh_hh_output(i64 %51, %struct.sk_buff* %52)
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %39
  %55 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %56 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %61 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32 %64(%struct.sk_buff* %65)
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %21
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %59, %48
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @bridge_parent(i64) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_pull_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @neigh_hh_output(i64, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
