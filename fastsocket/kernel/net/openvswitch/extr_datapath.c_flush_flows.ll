; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_flush_flows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_flush_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.flow_table = type { i32 }

@TBL_MIN_BUCKETS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*)* @flush_flows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_flows(%struct.datapath* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.datapath*, align 8
  %4 = alloca %struct.flow_table*, align 8
  %5 = alloca %struct.flow_table*, align 8
  store %struct.datapath* %0, %struct.datapath** %3, align 8
  %6 = load %struct.datapath*, %struct.datapath** %3, align 8
  %7 = getelementptr inbounds %struct.datapath, %struct.datapath* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.flow_table* @ovsl_dereference(i32 %8)
  store %struct.flow_table* %9, %struct.flow_table** %4, align 8
  %10 = load i32, i32* @TBL_MIN_BUCKETS, align 4
  %11 = call %struct.flow_table* @ovs_flow_tbl_alloc(i32 %10)
  store %struct.flow_table* %11, %struct.flow_table** %5, align 8
  %12 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %13 = icmp ne %struct.flow_table* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.datapath*, %struct.datapath** %3, align 8
  %19 = getelementptr inbounds %struct.datapath, %struct.datapath* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %22 = call i32 @rcu_assign_pointer(i32 %20, %struct.flow_table* %21)
  %23 = load %struct.flow_table*, %struct.flow_table** %4, align 8
  %24 = call i32 @ovs_flow_tbl_deferred_destroy(%struct.flow_table* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.flow_table* @ovsl_dereference(i32) #1

declare dso_local %struct.flow_table* @ovs_flow_tbl_alloc(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.flow_table*) #1

declare dso_local i32 @ovs_flow_tbl_deferred_destroy(%struct.flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
