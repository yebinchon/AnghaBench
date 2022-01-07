; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_complete_pro_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_complete_pro_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32* }
%struct.se_node_acl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.target_core_fabric_ops* }
%struct.target_core_fabric_ops = type { i32 (...)* }
%struct.t10_pr_registration = type { i64, i64, i64, i64 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"SPC-3 PR [%s] Service Action: %s RELEASE cleared reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"explict\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"implict\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"SPC-3 PR [%s] RELEASE Node: %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32)* @__core_scsi3_complete_pro_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__core_scsi3_complete_pro_release(%struct.se_device* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32 %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.t10_pr_registration*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_core_fabric_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %6, align 8
  store %struct.t10_pr_registration* %2, %struct.t10_pr_registration** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %14 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %16, align 8
  store %struct.target_core_fabric_ops* %17, %struct.target_core_fabric_ops** %9, align 8
  %18 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %25 = getelementptr inbounds i8, i8* %21, i64 0
  %26 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %27 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %24, i8* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.se_device*, %struct.se_device** %5, align 8
  %29 = getelementptr inbounds %struct.se_device, %struct.se_device* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %31 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %30, i32 0, i32 0
  %32 = load i32 (...)*, i32 (...)** %31, align 8
  %33 = call i32 (...) %32()
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %38 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %39 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @core_scsi3_pr_dump_type(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %45 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = call i32 (i8*, i32, i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %37, i8* %43, i32 %49)
  %51 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %52 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %51, i32 0, i32 0
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = call i32 (...) %53()
  %55 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %56 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %4
  %63 = getelementptr inbounds i8, i8* %21, i64 0
  br label %65

64:                                               ; preds = %4
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %64 ]
  %67 = call i32 (i8*, i32, i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %54, i8* %59, i8* %66)
  %68 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %69 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %71 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %73 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %74)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @core_scsi3_pr_dump_type(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
