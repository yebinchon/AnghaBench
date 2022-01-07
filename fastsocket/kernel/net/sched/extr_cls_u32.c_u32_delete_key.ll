; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_delete_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_delete_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tc_u_knode = type { %struct.tc_u_knode*, i32, %struct.tc_u_hnode* }
%struct.tc_u_hnode = type { %struct.tc_u_knode** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.tc_u_knode*)* @u32_delete_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_delete_key(%struct.tcf_proto* %0, %struct.tc_u_knode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tc_u_knode*, align 8
  %6 = alloca %struct.tc_u_knode**, align 8
  %7 = alloca %struct.tc_u_hnode*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tc_u_knode* %1, %struct.tc_u_knode** %5, align 8
  %8 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %9 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %8, i32 0, i32 2
  %10 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %9, align 8
  store %struct.tc_u_hnode* %10, %struct.tc_u_hnode** %7, align 8
  %11 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %12 = icmp ne %struct.tc_u_hnode* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %2
  %14 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %15 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %14, i32 0, i32 0
  %16 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %15, align 8
  %17 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %18 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @TC_U32_HASH(i32 %19)
  %21 = getelementptr inbounds %struct.tc_u_knode*, %struct.tc_u_knode** %16, i64 %20
  store %struct.tc_u_knode** %21, %struct.tc_u_knode*** %6, align 8
  br label %22

22:                                               ; preds = %44, %13
  %23 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %6, align 8
  %24 = load %struct.tc_u_knode*, %struct.tc_u_knode** %23, align 8
  %25 = icmp ne %struct.tc_u_knode* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %6, align 8
  %28 = load %struct.tc_u_knode*, %struct.tc_u_knode** %27, align 8
  %29 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %30 = icmp eq %struct.tc_u_knode* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %33 = call i32 @tcf_tree_lock(%struct.tcf_proto* %32)
  %34 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %35 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %34, i32 0, i32 0
  %36 = load %struct.tc_u_knode*, %struct.tc_u_knode** %35, align 8
  %37 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %6, align 8
  store %struct.tc_u_knode* %36, %struct.tc_u_knode** %37, align 8
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %39 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %38)
  %40 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %41 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %42 = call i32 @u32_destroy_key(%struct.tcf_proto* %40, %struct.tc_u_knode* %41)
  store i32 0, i32* %3, align 4
  br label %51

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %6, align 8
  %46 = load %struct.tc_u_knode*, %struct.tc_u_knode** %45, align 8
  %47 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %46, i32 0, i32 0
  store %struct.tc_u_knode** %47, %struct.tc_u_knode*** %6, align 8
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %2
  %50 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %31
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @TC_U32_HASH(i32) #1

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @u32_destroy_key(%struct.tcf_proto*, %struct.tc_u_knode*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
