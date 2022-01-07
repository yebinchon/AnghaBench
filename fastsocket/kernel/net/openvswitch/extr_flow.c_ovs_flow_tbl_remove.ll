; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_tbl_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_tbl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i64, i64 }
%struct.sw_flow = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_tbl_remove(%struct.flow_table* %0, %struct.sw_flow* %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.sw_flow*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %4, align 8
  %5 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %6 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %12 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %15 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i32 @hlist_del_rcu(i32* %17)
  %19 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %20 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
