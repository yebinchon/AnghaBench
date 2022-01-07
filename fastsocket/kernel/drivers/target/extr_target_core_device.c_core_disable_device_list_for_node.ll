; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_disable_device_list_for_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_disable_device_list_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, %struct.se_port* }
%struct.se_port = type { i32 }
%struct.se_lun_acl = type { i32 }
%struct.se_node_acl = type { i32, %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32, i64, i64, i32*, i32*, i32, i32 }
%struct.se_portal_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_disable_device_list_for_node(%struct.se_lun* %0, %struct.se_lun_acl* %1, i64 %2, i64 %3, %struct.se_node_acl* %4, %struct.se_portal_group* %5) #0 {
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca %struct.se_lun_acl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.se_node_acl*, align 8
  %12 = alloca %struct.se_portal_group*, align 8
  %13 = alloca %struct.se_port*, align 8
  %14 = alloca %struct.se_dev_entry*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %7, align 8
  store %struct.se_lun_acl* %1, %struct.se_lun_acl** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.se_node_acl* %4, %struct.se_node_acl** %11, align 8
  store %struct.se_portal_group* %5, %struct.se_portal_group** %12, align 8
  %15 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %16 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %15, i32 0, i32 1
  %17 = load %struct.se_port*, %struct.se_port** %16, align 8
  store %struct.se_port* %17, %struct.se_port** %13, align 8
  %18 = load %struct.se_node_acl*, %struct.se_node_acl** %11, align 8
  %19 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %18, i32 0, i32 1
  %20 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %20, i64 %21
  %23 = load %struct.se_dev_entry*, %struct.se_dev_entry** %22, align 8
  store %struct.se_dev_entry* %23, %struct.se_dev_entry** %14, align 8
  %24 = load %struct.se_port*, %struct.se_port** %13, align 8
  %25 = getelementptr inbounds %struct.se_port, %struct.se_port* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %28 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %27, i32 0, i32 6
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.se_port*, %struct.se_port** %13, align 8
  %31 = getelementptr inbounds %struct.se_port, %struct.se_port* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  br label %33

33:                                               ; preds = %38, %6
  %34 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %35 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %34, i32 0, i32 5
  %36 = call i64 @atomic_read(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @cpu_relax()
  br label %33

40:                                               ; preds = %33
  %41 = load %struct.se_node_acl*, %struct.se_node_acl** %11, align 8
  %42 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %45 = call i32 @core_scsi3_ua_release_all(%struct.se_dev_entry* %44)
  %46 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %47 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %49 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %51 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %53 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %55 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.se_node_acl*, %struct.se_node_acl** %11, align 8
  %59 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %62 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.se_node_acl*, %struct.se_node_acl** %11, align 8
  %65 = call i32 @core_scsi3_free_pr_reg_from_nacl(i32 %63, %struct.se_node_acl* %64)
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @core_scsi3_ua_release_all(%struct.se_dev_entry*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @core_scsi3_free_pr_reg_from_nacl(i32, %struct.se_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
