; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_clear_object_luns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_clear_object_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32, %struct.se_lun** }
%struct.se_lun = type { i64, i32, i32* }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i32 0, align 4
@TRANSPORT_LUN_STATUS_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_tpg_clear_object_luns(%struct.se_portal_group* %0) #0 {
  %2 = alloca %struct.se_portal_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_lun*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %2, align 8
  %5 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %6 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %14 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %13, i32 0, i32 1
  %15 = load %struct.se_lun**, %struct.se_lun*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.se_lun*, %struct.se_lun** %15, i64 %17
  %19 = load %struct.se_lun*, %struct.se_lun** %18, align 8
  store %struct.se_lun* %19, %struct.se_lun** %4, align 8
  %20 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %21 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TRANSPORT_LUN_STATUS_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %12
  %26 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %27 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %12
  br label %43

31:                                               ; preds = %25
  %32 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %33 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %36 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %37 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @core_dev_del_lun(%struct.se_portal_group* %35, i32 %38)
  %40 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %41 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  br label %43

43:                                               ; preds = %31, %30
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %48 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @core_dev_del_lun(%struct.se_portal_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
