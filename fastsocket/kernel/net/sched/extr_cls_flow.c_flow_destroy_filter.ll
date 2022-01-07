; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_destroy_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_destroy_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.flow_filter = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.flow_filter*)* @flow_destroy_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_destroy_filter(%struct.tcf_proto* %0, %struct.flow_filter* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.flow_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.flow_filter* %1, %struct.flow_filter** %4, align 8
  %5 = load %struct.flow_filter*, %struct.flow_filter** %4, align 8
  %6 = getelementptr inbounds %struct.flow_filter, %struct.flow_filter* %5, i32 0, i32 2
  %7 = call i32 @del_timer_sync(i32* %6)
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %9 = load %struct.flow_filter*, %struct.flow_filter** %4, align 8
  %10 = getelementptr inbounds %struct.flow_filter, %struct.flow_filter* %9, i32 0, i32 1
  %11 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %8, i32* %10)
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %13 = load %struct.flow_filter*, %struct.flow_filter** %4, align 8
  %14 = getelementptr inbounds %struct.flow_filter, %struct.flow_filter* %13, i32 0, i32 0
  %15 = call i32 @tcf_em_tree_destroy(%struct.tcf_proto* %12, i32* %14)
  %16 = load %struct.flow_filter*, %struct.flow_filter** %4, align 8
  %17 = call i32 @kfree(%struct.flow_filter* %16)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @tcf_em_tree_destroy(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @kfree(%struct.flow_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
