; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_tpg_alloc_fabric_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_tpg_alloc_fabric_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.tcm_loop_nacl = type { %struct.se_node_acl }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate struct tcm_loop_nacl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_node_acl* (%struct.se_portal_group*)* @tcm_loop_tpg_alloc_fabric_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_node_acl* @tcm_loop_tpg_alloc_fabric_acl(%struct.se_portal_group* %0) #0 {
  %2 = alloca %struct.se_node_acl*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.tcm_loop_nacl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.tcm_loop_nacl* @kzalloc(i32 4, i32 %5)
  store %struct.tcm_loop_nacl* %6, %struct.tcm_loop_nacl** %4, align 8
  %7 = load %struct.tcm_loop_nacl*, %struct.tcm_loop_nacl** %4, align 8
  %8 = icmp ne %struct.tcm_loop_nacl* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.se_node_acl* null, %struct.se_node_acl** %2, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.tcm_loop_nacl*, %struct.tcm_loop_nacl** %4, align 8
  %13 = getelementptr inbounds %struct.tcm_loop_nacl, %struct.tcm_loop_nacl* %12, i32 0, i32 0
  store %struct.se_node_acl* %13, %struct.se_node_acl** %2, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  ret %struct.se_node_acl* %15
}

declare dso_local %struct.tcm_loop_nacl* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
