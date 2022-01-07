; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_lunacl_depend_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_lunacl_depend_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_dev_entry = type { %struct.se_lun_acl* }
%struct.se_lun_acl = type { %struct.TYPE_4__, %struct.se_node_acl* }
%struct.TYPE_4__ = type { i32 }
%struct.se_node_acl = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_dev_entry*)* @core_scsi3_lunacl_depend_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_lunacl_depend_item(%struct.se_dev_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_dev_entry*, align 8
  %4 = alloca %struct.se_lun_acl*, align 8
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  store %struct.se_dev_entry* %0, %struct.se_dev_entry** %3, align 8
  %7 = load %struct.se_dev_entry*, %struct.se_dev_entry** %3, align 8
  %8 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %7, i32 0, i32 0
  %9 = load %struct.se_lun_acl*, %struct.se_lun_acl** %8, align 8
  store %struct.se_lun_acl* %9, %struct.se_lun_acl** %4, align 8
  %10 = load %struct.se_lun_acl*, %struct.se_lun_acl** %4, align 8
  %11 = icmp ne %struct.se_lun_acl* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.se_lun_acl*, %struct.se_lun_acl** %4, align 8
  %15 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %14, i32 0, i32 1
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %15, align 8
  store %struct.se_node_acl* %16, %struct.se_node_acl** %5, align 8
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %18 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %17, i32 0, i32 0
  %19 = load %struct.se_portal_group*, %struct.se_portal_group** %18, align 8
  store %struct.se_portal_group* %19, %struct.se_portal_group** %6, align 8
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %21 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.se_lun_acl*, %struct.se_lun_acl** %4, align 8
  %26 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @configfs_depend_item(i32 %24, i32* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @configfs_depend_item(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
