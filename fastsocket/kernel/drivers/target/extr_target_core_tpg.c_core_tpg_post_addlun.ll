; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_post_addlun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_post_addlun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_lun = type { i32, i32 }

@TRANSPORT_LUN_STATUS_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_post_addlun(%struct.se_portal_group* %0, %struct.se_lun* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_lun* %1, %struct.se_lun** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %13 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %14 = call i32 @core_dev_export(i8* %11, %struct.se_portal_group* %12, %struct.se_lun* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %4
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %21 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %25 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @TRANSPORT_LUN_STATUS_ACTIVE, align 4
  %27 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %28 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %30 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @core_dev_export(i8*, %struct.se_portal_group*, %struct.se_lun*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
