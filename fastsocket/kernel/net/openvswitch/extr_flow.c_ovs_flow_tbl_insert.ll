; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_tbl_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_tbl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32 }
%struct.sw_flow = type { i32, i32 }
%struct.sw_flow_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_tbl_insert(%struct.flow_table* %0, %struct.sw_flow* %1, %struct.sw_flow_key* %2, i32 %3) #0 {
  %5 = alloca %struct.flow_table*, align 8
  %6 = alloca %struct.sw_flow*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca i32, align 4
  store %struct.flow_table* %0, %struct.flow_table** %5, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %6, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %10 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %11 = call i32 @flow_key_start(%struct.sw_flow_key* %10)
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @ovs_flow_hash(%struct.sw_flow_key* %9, i32 %11, i32 %12)
  %14 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %15 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %17 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %16, i32 0, i32 0
  %18 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.sw_flow_key* %18, i32 4)
  %20 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %21 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %22 = call i32 @__flow_tbl_insert(%struct.flow_table* %20, %struct.sw_flow* %21)
  ret void
}

declare dso_local i32 @ovs_flow_hash(%struct.sw_flow_key*, i32, i32) #1

declare dso_local i32 @flow_key_start(%struct.sw_flow_key*) #1

declare dso_local i32 @memcpy(i32*, %struct.sw_flow_key*, i32) #1

declare dso_local i32 @__flow_tbl_insert(%struct.flow_table*, %struct.sw_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
