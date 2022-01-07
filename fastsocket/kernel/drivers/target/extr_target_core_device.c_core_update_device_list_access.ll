; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_update_device_list_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_update_device_list_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, %struct.se_dev_entry** }
%struct.se_dev_entry = type { i64 }

@TRANSPORT_LUNFLAGS_READ_WRITE = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_READ_ONLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_update_device_list_access(i64 %0, i64 %1, %struct.se_node_acl* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.se_dev_entry*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.se_node_acl* %2, %struct.se_node_acl** %6, align 8
  %8 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %9 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 1
  %13 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %13, i64 %14
  %16 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  store %struct.se_dev_entry* %16, %struct.se_dev_entry** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_ONLY, align 8
  %23 = xor i64 %22, -1
  %24 = load %struct.se_dev_entry*, %struct.se_dev_entry** %7, align 8
  %25 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %29 = load %struct.se_dev_entry*, %struct.se_dev_entry** %7, align 8
  %30 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %45

33:                                               ; preds = %3
  %34 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %35 = xor i64 %34, -1
  %36 = load %struct.se_dev_entry*, %struct.se_dev_entry** %7, align 8
  %37 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_ONLY, align 8
  %41 = load %struct.se_dev_entry*, %struct.se_dev_entry** %7, align 8
  %42 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %33, %21
  %46 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %47 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
