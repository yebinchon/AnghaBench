; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_clear_hnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_clear_hnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tc_u_hnode = type { i32, %struct.tc_u_knode** }
%struct.tc_u_knode = type { %struct.tc_u_knode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tc_u_hnode*)* @u32_clear_hnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_clear_hnode(%struct.tcf_proto* %0, %struct.tc_u_hnode* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tc_u_hnode*, align 8
  %5 = alloca %struct.tc_u_knode*, align 8
  %6 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tc_u_hnode* %1, %struct.tc_u_hnode** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %10 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ule i32 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %23, %13
  %15 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %16 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %15, i32 0, i32 1
  %17 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tc_u_knode*, %struct.tc_u_knode** %17, i64 %19
  %21 = load %struct.tc_u_knode*, %struct.tc_u_knode** %20, align 8
  store %struct.tc_u_knode* %21, %struct.tc_u_knode** %5, align 8
  %22 = icmp ne %struct.tc_u_knode* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %25 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %24, i32 0, i32 0
  %26 = load %struct.tc_u_knode*, %struct.tc_u_knode** %25, align 8
  %27 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %28 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %27, i32 0, i32 1
  %29 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tc_u_knode*, %struct.tc_u_knode** %29, i64 %31
  store %struct.tc_u_knode* %26, %struct.tc_u_knode** %32, align 8
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %34 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %35 = call i32 @u32_destroy_key(%struct.tcf_proto* %33, %struct.tc_u_knode* %34)
  br label %14

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %7
  ret void
}

declare dso_local i32 @u32_destroy_key(%struct.tcf_proto*, %struct.tc_u_knode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
