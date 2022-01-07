; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.cls_cgroup_head* }
%struct.cls_cgroup_head = type { i32 }
%struct.tcf_walker = type { i64, i64, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i32 }
%struct.tcf_proto.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*)* @cls_cgroup_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_cgroup_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_walker*, align 8
  %5 = alloca %struct.cls_cgroup_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %4, align 8
  %6 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %7 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %6, i32 0, i32 0
  %8 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %7, align 8
  store %struct.cls_cgroup_head* %8, %struct.cls_cgroup_head** %5, align 8
  %9 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %19 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %18, i32 0, i32 2
  %20 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %19, align 8
  %21 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %22 = bitcast %struct.tcf_proto* %21 to %struct.tcf_proto.0*
  %23 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %5, align 8
  %24 = ptrtoint %struct.cls_cgroup_head* %23 to i64
  %25 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %26 = call i64 %20(%struct.tcf_proto.0* %22, i64 %24, %struct.tcf_walker* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %30 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %29, i32 0, i32 3
  store i32 1, i32* %30, align 8
  br label %37

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %34 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
