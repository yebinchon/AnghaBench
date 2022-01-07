; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_mappedlun_store_write_protect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_mappedlun_store_write_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun_acl = type { i32, i32, %struct.se_node_acl* }
%struct.se_node_acl = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@EINVAL = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_READ_ONLY = common dso_local global i32 0, align 4
@TRANSPORT_LUNFLAGS_READ_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"%s_ConfigFS: Changed Initiator ACL: %s Mapped LUN: %u Write Protect bit to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_lun_acl*, i8*, i64)* @target_fabric_mappedlun_store_write_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_fabric_mappedlun_store_write_protect(%struct.se_lun_acl* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_lun_acl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_node_acl*, align 8
  %9 = alloca %struct.se_portal_group*, align 8
  %10 = alloca i64, align 8
  store %struct.se_lun_acl* %0, %struct.se_lun_acl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %12 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %11, i32 0, i32 2
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  store %struct.se_node_acl* %13, %struct.se_node_acl** %8, align 8
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 0
  %16 = load %struct.se_portal_group*, %struct.se_portal_group** %15, align 8
  store %struct.se_portal_group* %16, %struct.se_portal_group** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strict_strtoul(i8* %17, i32 0, i64* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %66

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %66

32:                                               ; preds = %26, %23
  %33 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %34 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_WRITE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %45 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %44, i32 0, i32 2
  %46 = load %struct.se_node_acl*, %struct.se_node_acl** %45, align 8
  %47 = call i32 @core_update_device_list_access(i32 %35, i32 %43, %struct.se_node_acl* %46)
  %48 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %49 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (...)*, i32 (...)** %51, align 8
  %53 = call i32 (...) %52()
  %54 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %55 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %58 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i8* %63)
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %42, %29, %20
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @core_update_device_list_access(i32, i32, %struct.se_node_acl*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
