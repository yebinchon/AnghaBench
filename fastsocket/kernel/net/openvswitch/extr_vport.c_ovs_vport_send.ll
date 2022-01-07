; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.sk_buff = type { i32 }
%struct.vport_percpu_stats = type { i32, i32, i32 }

@VPORT_E_TX_ERROR = common dso_local global i32 0, align 4
@VPORT_E_TX_DROPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_vport_send(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vport_percpu_stats*, align 8
  store %struct.vport* %0, %struct.vport** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.vport*, %struct.vport** %3, align 8
  %8 = getelementptr inbounds %struct.vport, %struct.vport* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.vport*, %struct.sk_buff*)**
  %12 = load i32 (%struct.vport*, %struct.sk_buff*)*, i32 (%struct.vport*, %struct.sk_buff*)** %11, align 8
  %13 = load %struct.vport*, %struct.vport** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 %12(%struct.vport* %13, %struct.sk_buff* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load %struct.vport*, %struct.vport** %3, align 8
  %23 = getelementptr inbounds %struct.vport, %struct.vport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vport_percpu_stats* @this_cpu_ptr(i32 %24)
  store %struct.vport_percpu_stats* %25, %struct.vport_percpu_stats** %6, align 8
  %26 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %6, align 8
  %27 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %26, i32 0, i32 1
  %28 = call i32 @u64_stats_update_begin(i32* %27)
  %29 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %6, align 8
  %30 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %6, align 8
  %35 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.vport_percpu_stats*, %struct.vport_percpu_stats** %6, align 8
  %39 = getelementptr inbounds %struct.vport_percpu_stats, %struct.vport_percpu_stats* %38, i32 0, i32 1
  %40 = call i32 @u64_stats_update_end(i32* %39)
  br label %55

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.vport*, %struct.vport** %3, align 8
  %46 = load i32, i32* @VPORT_E_TX_ERROR, align 4
  %47 = call i32 @ovs_vport_record_error(%struct.vport* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.vport*, %struct.vport** %3, align 8
  %52 = load i32, i32* @VPORT_E_TX_DROPPED, align 4
  %53 = call i32 @ovs_vport_record_error(%struct.vport* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.vport_percpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @ovs_vport_record_error(%struct.vport*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
