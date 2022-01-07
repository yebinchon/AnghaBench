; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_delete_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_delete_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.route4_filter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.route4_filter*)* @route4_delete_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route4_delete_filter(%struct.tcf_proto* %0, %struct.route4_filter* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.route4_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.route4_filter* %1, %struct.route4_filter** %4, align 8
  %5 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %6 = load %struct.route4_filter*, %struct.route4_filter** %4, align 8
  %7 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %6, i32 0, i32 1
  %8 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %5, i32* %7)
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %10 = load %struct.route4_filter*, %struct.route4_filter** %4, align 8
  %11 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %10, i32 0, i32 0
  %12 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %9, i32* %11)
  %13 = load %struct.route4_filter*, %struct.route4_filter** %4, align 8
  %14 = call i32 @kfree(%struct.route4_filter* %13)
  ret void
}

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @kfree(%struct.route4_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
