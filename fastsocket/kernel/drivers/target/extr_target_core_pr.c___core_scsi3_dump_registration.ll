; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_dump_registration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_dump_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_core_fabric_ops = type { i32 (...)*, i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group.0*)* }
%struct.se_portal_group = type opaque
%struct.se_portal_group.0 = type opaque
%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_node_acl = type { i32, %struct.se_portal_group.1* }
%struct.se_portal_group.1 = type { i32 }
%struct.t10_pr_registration = type { i8*, i8*, i32, i64 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"SPC-3 PR [%s] Service Action: REGISTER%s Initiator Node: %s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_AND_MOVE\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"_AND_IGNORE_EXISTING_KEY\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"SPC-3 PR [%s] registration on Target Port: %s,0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"SPC-3 PR [%s] for %s TCM Subsystem %s Object Target Port(s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration: 0x%08x  APTPL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_core_fabric_ops*, %struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32)* @__core_scsi3_dump_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__core_scsi3_dump_registration(%struct.target_core_fabric_ops* %0, %struct.se_device* %1, %struct.se_node_acl* %2, %struct.t10_pr_registration* %3, i32 %4) #0 {
  %6 = alloca %struct.target_core_fabric_ops*, align 8
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.se_node_acl*, align 8
  %9 = alloca %struct.t10_pr_registration*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.se_portal_group.1*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.target_core_fabric_ops* %0, %struct.target_core_fabric_ops** %6, align 8
  store %struct.se_device* %1, %struct.se_device** %7, align 8
  store %struct.se_node_acl* %2, %struct.se_node_acl** %8, align 8
  store %struct.t10_pr_registration* %3, %struct.t10_pr_registration** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %16 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %15, i32 0, i32 1
  %17 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %16, align 8
  store %struct.se_portal_group.1* %17, %struct.se_portal_group.1** %11, align 8
  %18 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %26 = getelementptr inbounds i8, i8* %21, i64 0
  %27 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %28 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %25, i8* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %30 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %41

36:                                               ; preds = %5
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %41

41:                                               ; preds = %36, %35
  %42 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %35 ], [ %40, %36 ]
  %43 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %44 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i8* [ %21, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %49 ]
  %52 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %42, i32 %45, i8* %51)
  %53 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %54 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %53, i32 0, i32 0
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = call i32 (...) %55()
  %57 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %58 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %57, i32 0, i32 2
  %59 = load i32 (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.0*)** %58, align 8
  %60 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %11, align 8
  %61 = bitcast %struct.se_portal_group.1* %60 to %struct.se_portal_group.0*
  %62 = call i32 %59(%struct.se_portal_group.0* %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %66 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %65, i32 0, i32 1
  %67 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %66, align 8
  %68 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %11, align 8
  %69 = bitcast %struct.se_portal_group.1* %68 to %struct.se_portal_group*
  %70 = call i32 %67(%struct.se_portal_group* %69)
  %71 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %56, i8* %64, i32 %70)
  %72 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %73 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %72, i32 0, i32 0
  %74 = load i32 (...)*, i32 (...)** %73, align 8
  %75 = call i32 (...) %74()
  %76 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %77 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %82 = load %struct.se_device*, %struct.se_device** %7, align 8
  %83 = getelementptr inbounds %struct.se_device, %struct.se_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %75, i8* %81, i32 %86)
  %88 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %89 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %88, i32 0, i32 0
  %90 = load i32 (...)*, i32 (...)** %89, align 8
  %91 = call i32 (...) %90()
  %92 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %93 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %96 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %99 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %91, i8* %94, i32 %97, i8* %100)
  %102 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
