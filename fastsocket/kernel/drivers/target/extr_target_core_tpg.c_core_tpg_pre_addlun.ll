; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_pre_addlun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_pre_addlun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i64 }
%struct.se_portal_group = type { i32, %struct.TYPE_2__*, %struct.se_lun** }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 (...)* }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"%s LUN: %u exceeds TRANSPORT_MAX_LUNS_PER_TPG-1: %u for Target Portal Group: %u\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@TRANSPORT_LUN_STATUS_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"TPG Logical Unit Number: %u is already active on %s Target Portal Group: %u, ignoring request.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_lun* @core_tpg_pre_addlun(%struct.se_portal_group* %0, i32 %1) #0 {
  %3 = alloca %struct.se_lun*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_lun*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %13 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = call i32 (...) %16()
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %22 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %24, align 8
  %26 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %27 = call i32 %25(%struct.se_portal_group* %26)
  %28 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %20, i32 %27)
  %29 = load i32, i32* @EOVERFLOW, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.se_lun* @ERR_PTR(i32 %30)
  store %struct.se_lun* %31, %struct.se_lun** %3, align 8
  br label %75

32:                                               ; preds = %2
  %33 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %34 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %37 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %36, i32 0, i32 2
  %38 = load %struct.se_lun**, %struct.se_lun*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.se_lun*, %struct.se_lun** %38, i64 %40
  %42 = load %struct.se_lun*, %struct.se_lun** %41, align 8
  store %struct.se_lun* %42, %struct.se_lun** %6, align 8
  %43 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %44 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TRANSPORT_LUN_STATUS_ACTIVE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %51 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = call i32 (...) %54()
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %57 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %59, align 8
  %61 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %62 = call i32 %60(%struct.se_portal_group* %61)
  %63 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %55, i32 %62)
  %64 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %65 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.se_lun* @ERR_PTR(i32 %68)
  store %struct.se_lun* %69, %struct.se_lun** %3, align 8
  br label %75

70:                                               ; preds = %32
  %71 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %72 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  store %struct.se_lun* %74, %struct.se_lun** %3, align 8
  br label %75

75:                                               ; preds = %70, %48, %11
  %76 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  ret %struct.se_lun* %76
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32, ...) #1

declare dso_local %struct.se_lun* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
