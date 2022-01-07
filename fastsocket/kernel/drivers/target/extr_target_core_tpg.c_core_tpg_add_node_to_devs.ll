; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_add_node_to_devs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_add_node_to_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32 }
%struct.se_portal_group = type { i32, %struct.TYPE_4__*, %struct.se_lun** }
%struct.TYPE_4__ = type { i32 (%struct.se_portal_group*)*, i32 (...)*, i32 (%struct.se_portal_group*)* }
%struct.se_lun = type { i64, i32, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.se_device*)* }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i32 0, align 4
@TRANSPORT_LUN_STATUS_ACTIVE = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_READ_WRITE = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_READ_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"TARGET_CORE[%s]->TPG[%u]_LUN[%u] - Adding %s access for LUN in Demo Mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"READ-WRITE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"READ-ONLY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_tpg_add_node_to_devs(%struct.se_node_acl* %0, %struct.se_portal_group* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca %struct.se_device*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %3, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %10 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %96, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %99

16:                                               ; preds = %12
  %17 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %18 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %17, i32 0, i32 2
  %19 = load %struct.se_lun**, %struct.se_lun*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.se_lun*, %struct.se_lun** %19, i64 %21
  %23 = load %struct.se_lun*, %struct.se_lun** %22, align 8
  store %struct.se_lun* %23, %struct.se_lun** %7, align 8
  %24 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %25 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TRANSPORT_LUN_STATUS_ACTIVE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %96

30:                                               ; preds = %16
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %32 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %35 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %34, i32 0, i32 2
  %36 = load %struct.se_device*, %struct.se_device** %35, align 8
  store %struct.se_device* %36, %struct.se_device** %8, align 8
  %37 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %38 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %40, align 8
  %42 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %43 = call i32 %41(%struct.se_portal_group* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %30
  %46 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  store i64 %46, i64* %6, align 8
  br label %62

47:                                               ; preds = %30
  %48 = load %struct.se_device*, %struct.se_device** %8, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %51, align 8
  %53 = load %struct.se_device*, %struct.se_device** %8, align 8
  %54 = call i64 %52(%struct.se_device* %53)
  %55 = load i64, i64* @TYPE_DISK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_ONLY, align 8
  store i64 %58, i64* %6, align 8
  br label %61

59:                                               ; preds = %47
  %60 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %64 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32 (...)*, i32 (...)** %66, align 8
  %68 = call i32 (...) %67()
  %69 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %70 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %72, align 8
  %74 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %75 = call i32 %73(%struct.se_portal_group* %74)
  %76 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %77 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %75, i32 %78, i8* %83)
  %85 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %86 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %87 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %91 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %92 = call i32 @core_enable_device_list_for_node(%struct.se_lun* %85, i32* null, i32 %88, i64 %89, %struct.se_node_acl* %90, %struct.se_portal_group* %91)
  %93 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %94 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  br label %96

96:                                               ; preds = %62, %29
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %12

99:                                               ; preds = %12
  %100 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %101 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @core_enable_device_list_for_node(%struct.se_lun*, i32*, i32, i64, %struct.se_node_acl*, %struct.se_portal_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
