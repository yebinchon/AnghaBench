; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_get_initiator_node_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_get_initiator_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32 }
%struct.se_portal_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_node_acl* @core_tpg_get_initiator_node_acl(%struct.se_portal_group* %0, i8* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_node_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %7 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.se_node_acl* @__core_tpg_get_initiator_node_acl(%struct.se_portal_group* %9, i8* %10)
  store %struct.se_node_acl* %11, %struct.se_node_acl** %5, align 8
  %12 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %13 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock_irq(i32* %13)
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  ret %struct.se_node_acl* %15
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.se_node_acl* @__core_tpg_get_initiator_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
