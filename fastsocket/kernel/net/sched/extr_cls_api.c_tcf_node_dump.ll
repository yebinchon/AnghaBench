; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_node_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i32 }
%struct.tcf_dump_args = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@RTM_NEWTFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.tcf_walker*)* @tcf_node_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_node_dump(%struct.tcf_proto* %0, i64 %1, %struct.tcf_walker* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcf_walker*, align 8
  %7 = alloca %struct.tcf_dump_args*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.tcf_walker* %2, %struct.tcf_walker** %6, align 8
  %9 = load %struct.tcf_walker*, %struct.tcf_walker** %6, align 8
  %10 = bitcast %struct.tcf_walker* %9 to i8*
  %11 = bitcast i8* %10 to %struct.tcf_dump_args*
  store %struct.tcf_dump_args* %11, %struct.tcf_dump_args** %7, align 8
  %12 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %13 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %18 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @NETLINK_CB(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %27 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NLM_F_MULTI, align 4
  %34 = load i32, i32* @RTM_NEWTFILTER, align 4
  %35 = call i32 @tcf_fill_node(i32 %14, %struct.tcf_proto* %15, i64 %16, i32 %25, i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @tcf_fill_node(i32, %struct.tcf_proto*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
