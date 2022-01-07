; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_set_queue_depth_for_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_set_queue_depth_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }
%struct.se_node_acl = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Queue depth for %s Initiator Node: %s is 0,defaulting to 1.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*, %struct.se_node_acl*)* @core_set_queue_depth_for_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_set_queue_depth_for_node(%struct.se_portal_group* %0, %struct.se_node_acl* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_node_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %4, align 8
  %5 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %6 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %11 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = call i32 (...) %14()
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %17 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %9, %2
  ret i32 0
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
