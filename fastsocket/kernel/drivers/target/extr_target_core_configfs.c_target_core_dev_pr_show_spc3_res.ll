; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_spc3_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_spc3_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.t10_pr_registration* }
%struct.t10_pr_registration = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (...)* }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No SPC-3 Reservation holder\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"SPC-3 Reservation: %s Initiator: %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_core_dev_pr_show_spc3_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_dev_pr_show_spc3_res(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.t10_pr_registration*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  %18 = load %struct.se_device*, %struct.se_device** %4, align 8
  %19 = getelementptr inbounds %struct.se_device, %struct.se_device* %18, i32 0, i32 0
  %20 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %19, align 8
  store %struct.t10_pr_registration* %20, %struct.t10_pr_registration** %7, align 8
  %21 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %22 = icmp ne %struct.t10_pr_registration* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %28 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %27, i32 0, i32 0
  %29 = load %struct.se_node_acl*, %struct.se_node_acl** %28, align 8
  store %struct.se_node_acl* %29, %struct.se_node_acl** %6, align 8
  %30 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %31 = getelementptr inbounds i8, i8* %15, i64 0
  %32 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %33 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %30, i8* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %36 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8* (...)*, i8* (...)** %40, align 8
  %42 = call i8* (...) %41()
  %43 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %44 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = getelementptr inbounds i8, i8* %15, i64 0
  br label %51

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %50 ]
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %45, i8* %52)
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %23
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
