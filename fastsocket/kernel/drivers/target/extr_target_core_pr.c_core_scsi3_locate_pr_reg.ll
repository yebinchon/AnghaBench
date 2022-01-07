; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_locate_pr_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_locate_pr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_pr_registration = type { i32 }
%struct.se_device = type { i32 }
%struct.se_node_acl = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_session*, i8*, i32)* }
%struct.se_session = type { i32 }

@PR_REG_ISID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t10_pr_registration* (%struct.se_device*, %struct.se_node_acl*, %struct.se_session*)* @core_scsi3_locate_pr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t10_pr_registration* @core_scsi3_locate_pr_reg(%struct.se_device* %0, %struct.se_node_acl* %1, %struct.se_session* %2) #0 {
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca %struct.se_session*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %5, align 8
  store %struct.se_session* %2, %struct.se_session** %6, align 8
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 0
  %13 = load %struct.se_portal_group*, %struct.se_portal_group** %12, align 8
  store %struct.se_portal_group* %13, %struct.se_portal_group** %7, align 8
  %14 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %19 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.se_session*, i8*, i32)* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = getelementptr inbounds i8, i8* %17, i64 0
  %26 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %27 = call i32 @memset(i8* %25, i32 0, i32 %26)
  %28 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %29 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %31, align 8
  %33 = load %struct.se_session*, %struct.se_session** %6, align 8
  %34 = getelementptr inbounds i8, i8* %17, i64 0
  %35 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %36 = call i32 %32(%struct.se_session* %33, i8* %34, i32 %35)
  %37 = getelementptr inbounds i8, i8* %17, i64 0
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %24, %3
  %39 = load %struct.se_device*, %struct.se_device** %4, align 8
  %40 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call %struct.t10_pr_registration* @__core_scsi3_locate_pr_reg(%struct.se_device* %39, %struct.se_node_acl* %40, i8* %41)
  %43 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %43)
  ret %struct.t10_pr_registration* %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.t10_pr_registration* @__core_scsi3_locate_pr_reg(%struct.se_device*, %struct.se_node_acl*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
