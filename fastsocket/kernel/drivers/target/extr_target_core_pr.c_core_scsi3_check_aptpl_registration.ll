; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_check_aptpl_registration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_check_aptpl_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.se_lun = type { i32 }
%struct.se_lun_acl = type { i64, %struct.se_node_acl* }
%struct.se_node_acl = type { %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32 }

@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_scsi3_check_aptpl_registration(%struct.se_device* %0, %struct.se_portal_group* %1, %struct.se_lun* %2, %struct.se_lun_acl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca %struct.se_lun*, align 8
  %9 = alloca %struct.se_lun_acl*, align 8
  %10 = alloca %struct.se_node_acl*, align 8
  %11 = alloca %struct.se_dev_entry*, align 8
  store %struct.se_device* %0, %struct.se_device** %6, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %7, align 8
  store %struct.se_lun* %2, %struct.se_lun** %8, align 8
  store %struct.se_lun_acl* %3, %struct.se_lun_acl** %9, align 8
  %12 = load %struct.se_lun_acl*, %struct.se_lun_acl** %9, align 8
  %13 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %12, i32 0, i32 1
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  store %struct.se_node_acl* %14, %struct.se_node_acl** %10, align 8
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %16 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %15, i32 0, i32 0
  %17 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %16, align 8
  %18 = load %struct.se_lun_acl*, %struct.se_lun_acl** %9, align 8
  %19 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %17, i64 %20
  %22 = load %struct.se_dev_entry*, %struct.se_dev_entry** %21, align 8
  store %struct.se_dev_entry* %22, %struct.se_dev_entry** %11, align 8
  %23 = load %struct.se_device*, %struct.se_device** %6, align 8
  %24 = getelementptr inbounds %struct.se_device, %struct.se_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.se_device*, %struct.se_device** %6, align 8
  %32 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %33 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %34 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %35 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %38 = load %struct.se_dev_entry*, %struct.se_dev_entry** %11, align 8
  %39 = call i32 @__core_scsi3_check_aptpl_registration(%struct.se_device* %31, %struct.se_portal_group* %32, %struct.se_lun* %33, i32 %36, %struct.se_node_acl* %37, %struct.se_dev_entry* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @__core_scsi3_check_aptpl_registration(%struct.se_device*, %struct.se_portal_group*, %struct.se_lun*, i32, %struct.se_node_acl*, %struct.se_dev_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
