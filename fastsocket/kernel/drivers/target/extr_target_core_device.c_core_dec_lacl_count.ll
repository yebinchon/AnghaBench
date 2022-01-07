; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_dec_lacl_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_dec_lacl_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32 }
%struct.se_cmd = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_dec_lacl_count(%struct.se_node_acl* %0, %struct.se_cmd* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca %struct.se_dev_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %3, align 8
  store %struct.se_cmd* %1, %struct.se_cmd** %4, align 8
  %7 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %8 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 1
  %13 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %12, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %13, i64 %16
  %18 = load %struct.se_dev_entry*, %struct.se_dev_entry** %17, align 8
  store %struct.se_dev_entry* %18, %struct.se_dev_entry** %5, align 8
  %19 = load %struct.se_dev_entry*, %struct.se_dev_entry** %5, align 8
  %20 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %24 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
