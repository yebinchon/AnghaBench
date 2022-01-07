; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_aptpl_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_aptpl_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.t10_pr_registration* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }
%struct.se_node_acl = type { i32 }
%struct.t10_pr_registration = type { i64, i32 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"SPC-3 PR [%s] Service Action: APTPL RESERVE created new reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SPC-3 PR [%s] RESERVE Node: %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*)* @core_scsi3_aptpl_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_scsi3_aptpl_reserve(%struct.se_device* %0, %struct.se_portal_group* %1, %struct.se_node_acl* %2, %struct.t10_pr_registration* %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %6, align 8
  store %struct.se_node_acl* %2, %struct.se_node_acl** %7, align 8
  store %struct.t10_pr_registration* %3, %struct.t10_pr_registration** %8, align 8
  %12 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  %18 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 0
  %20 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %21 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %18, i8* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.se_device*, %struct.se_device** %5, align 8
  %23 = getelementptr inbounds %struct.se_device, %struct.se_device* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %26 = load %struct.se_device*, %struct.se_device** %5, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 1
  store %struct.t10_pr_registration* %25, %struct.t10_pr_registration** %27, align 8
  %28 = load %struct.se_device*, %struct.se_device** %5, align 8
  %29 = getelementptr inbounds %struct.se_device, %struct.se_device* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %32 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = call i32 (...) %35()
  %37 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %38 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @core_scsi3_pr_dump_type(i32 %39)
  %41 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %42 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %46)
  %48 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %49 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (...)*, i32 (...)** %51, align 8
  %53 = call i32 (...) %52()
  %54 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %55 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %4
  %60 = getelementptr inbounds i8, i8* %15, i64 0
  br label %62

61:                                               ; preds = %4
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %61 ]
  %64 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i8* %63)
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #2

declare dso_local i32 @core_scsi3_pr_dump_type(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
