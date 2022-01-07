; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_destroy_hnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_destroy_hnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_common* }
%struct.tc_u_common = type { %struct.tc_u_hnode* }
%struct.tc_u_hnode = type { i32, %struct.tc_u_hnode* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.tc_u_hnode*)* @u32_destroy_hnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_destroy_hnode(%struct.tcf_proto* %0, %struct.tc_u_hnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tc_u_hnode*, align 8
  %6 = alloca %struct.tc_u_common*, align 8
  %7 = alloca %struct.tc_u_hnode**, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tc_u_hnode* %1, %struct.tc_u_hnode** %5, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load %struct.tc_u_common*, %struct.tc_u_common** %9, align 8
  store %struct.tc_u_common* %10, %struct.tc_u_common** %6, align 8
  %11 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %12 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %16 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %17 = call i32 @u32_clear_hnode(%struct.tcf_proto* %15, %struct.tc_u_hnode* %16)
  %18 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %19 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %18, i32 0, i32 0
  store %struct.tc_u_hnode** %19, %struct.tc_u_hnode*** %7, align 8
  br label %20

20:                                               ; preds = %37, %2
  %21 = load %struct.tc_u_hnode**, %struct.tc_u_hnode*** %7, align 8
  %22 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %21, align 8
  %23 = icmp ne %struct.tc_u_hnode* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.tc_u_hnode**, %struct.tc_u_hnode*** %7, align 8
  %26 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %25, align 8
  %27 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %28 = icmp eq %struct.tc_u_hnode* %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %31 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %30, i32 0, i32 1
  %32 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %31, align 8
  %33 = load %struct.tc_u_hnode**, %struct.tc_u_hnode*** %7, align 8
  store %struct.tc_u_hnode* %32, %struct.tc_u_hnode** %33, align 8
  %34 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %35 = call i32 @kfree(%struct.tc_u_hnode* %34)
  store i32 0, i32* %3, align 4
  br label %45

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.tc_u_hnode**, %struct.tc_u_hnode*** %7, align 8
  %39 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %38, align 8
  %40 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %39, i32 0, i32 1
  store %struct.tc_u_hnode** %40, %struct.tc_u_hnode*** %7, align 8
  br label %20

41:                                               ; preds = %20
  %42 = call i32 @WARN_ON(i32 1)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @u32_clear_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*) #1

declare dso_local i32 @kfree(%struct.tc_u_hnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
