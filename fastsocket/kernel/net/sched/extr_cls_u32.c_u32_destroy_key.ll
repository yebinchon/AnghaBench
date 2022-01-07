; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_destroy_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_destroy_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tc_u_knode = type { %struct.tc_u_knode*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.tc_u_knode*)* @u32_destroy_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_destroy_key(%struct.tcf_proto* %0, %struct.tc_u_knode* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tc_u_knode*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tc_u_knode* %1, %struct.tc_u_knode** %4, align 8
  %5 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %6 = load %struct.tc_u_knode*, %struct.tc_u_knode** %4, align 8
  %7 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %6, i32 0, i32 3
  %8 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %5, i32* %7)
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %10 = load %struct.tc_u_knode*, %struct.tc_u_knode** %4, align 8
  %11 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %10, i32 0, i32 2
  %12 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %9, i32* %11)
  %13 = load %struct.tc_u_knode*, %struct.tc_u_knode** %4, align 8
  %14 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.tc_u_knode*, %struct.tc_u_knode** %4, align 8
  %19 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.tc_u_knode*, %struct.tc_u_knode** %4, align 8
  %26 = call i32 @kfree(%struct.tc_u_knode* %25)
  ret i32 0
}

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @kfree(%struct.tc_u_knode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
