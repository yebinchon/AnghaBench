; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_complete_pro_preempt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_complete_pro_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.t10_pr_registration* }
%struct.t10_pr_registration = type { i32, i32, i32, i32, i64, %struct.se_node_acl* }
%struct.se_node_acl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.target_core_fabric_ops* }
%struct.target_core_fabric_ops = type { i32 (...)* }
%struct.list_head = type { i32 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"SPC-3 PR [%s] Service Action: PREEMPT%s created new reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"_AND_ABORT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"SPC-3 PR [%s] PREEMPT%s from Node: %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.t10_pr_registration*, %struct.list_head*, i32, i32, i32)* @__core_scsi3_complete_pro_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__core_scsi3_complete_pro_preempt(%struct.se_device* %0, %struct.t10_pr_registration* %1, %struct.list_head* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.se_node_acl*, align 8
  %14 = alloca %struct.target_core_fabric_ops*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %7, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %8, align 8
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %19 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %18, i32 0, i32 5
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %19, align 8
  store %struct.se_node_acl* %20, %struct.se_node_acl** %13, align 8
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  %22 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %24, align 8
  store %struct.target_core_fabric_ops* %25, %struct.target_core_fabric_ops** %14, align 8
  %26 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %31 = call i32 @memset(i8* %29, i32 0, i32 %30)
  %32 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 0
  %34 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %35 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %32, i8* %33, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.se_device*, %struct.se_device** %7, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 0
  %38 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %37, align 8
  %39 = icmp ne %struct.t10_pr_registration* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %6
  %41 = load %struct.se_device*, %struct.se_device** %7, align 8
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  %43 = load %struct.se_device*, %struct.se_device** %7, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 0
  %45 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %44, align 8
  %46 = call i32 @__core_scsi3_complete_pro_release(%struct.se_device* %41, %struct.se_node_acl* %42, %struct.t10_pr_registration* %45, i32 0)
  br label %47

47:                                               ; preds = %40, %6
  %48 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %49 = load %struct.se_device*, %struct.se_device** %7, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 0
  store %struct.t10_pr_registration* %48, %struct.t10_pr_registration** %50, align 8
  %51 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %52 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %55 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %58 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %14, align 8
  %60 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %59, i32 0, i32 0
  %61 = load i32 (...)*, i32 (...)** %60, align 8
  %62 = call i32 (...) %61()
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @core_scsi3_pr_dump_type(i32 %67)
  %69 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %70 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %66, i32 %68, i32 %74)
  %76 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %14, align 8
  %77 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %76, i32 0, i32 0
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %84 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  %85 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %47
  %90 = getelementptr inbounds i8, i8* %29, i64 0
  br label %92

91:                                               ; preds = %47
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %91 ]
  %94 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %79, i8* %83, i32 %86, i8* %93)
  %95 = load %struct.list_head*, %struct.list_head** %9, align 8
  %96 = icmp ne %struct.list_head* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %99 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %98, i32 0, i32 3
  %100 = load %struct.list_head*, %struct.list_head** %9, align 8
  %101 = call i32 @list_add_tail(i32* %99, %struct.list_head* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %103)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @__core_scsi3_complete_pro_release(%struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @core_scsi3_pr_dump_type(i32) #2

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
