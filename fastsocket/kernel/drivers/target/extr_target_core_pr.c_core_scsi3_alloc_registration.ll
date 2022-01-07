; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_registration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_node_acl = type { i32 }
%struct.se_dev_entry = type { i32 }
%struct.t10_pr_registration = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, %struct.se_node_acl*, %struct.se_dev_entry*, i8*, i32, i32, i32, i32, i32)* @core_scsi3_alloc_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_alloc_registration(%struct.se_device* %0, %struct.se_node_acl* %1, %struct.se_dev_entry* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.se_device*, align 8
  %12 = alloca %struct.se_node_acl*, align 8
  %13 = alloca %struct.se_dev_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.t10_pr_registration*, align 8
  store %struct.se_device* %0, %struct.se_device** %11, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %12, align 8
  store %struct.se_dev_entry* %2, %struct.se_dev_entry** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load %struct.se_device*, %struct.se_device** %11, align 8
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %23 = load %struct.se_dev_entry*, %struct.se_dev_entry** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call %struct.t10_pr_registration* @__core_scsi3_alloc_registration(%struct.se_device* %21, %struct.se_node_acl* %22, %struct.se_dev_entry* %23, i8* %24, i32 %25, i32 %26, i32 %27)
  store %struct.t10_pr_registration* %28, %struct.t10_pr_registration** %20, align 8
  %29 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %20, align 8
  %30 = icmp ne %struct.t10_pr_registration* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %9
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %41

34:                                               ; preds = %9
  %35 = load %struct.se_device*, %struct.se_device** %11, align 8
  %36 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %37 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %20, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @__core_scsi3_add_registration(%struct.se_device* %35, %struct.se_node_acl* %36, %struct.t10_pr_registration* %37, i32 %38, i32 %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local %struct.t10_pr_registration* @__core_scsi3_alloc_registration(%struct.se_device*, %struct.se_node_acl*, %struct.se_dev_entry*, i8*, i32, i32, i32) #1

declare dso_local i32 @__core_scsi3_add_registration(%struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
