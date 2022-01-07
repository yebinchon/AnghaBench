; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_post_dellun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_post_dellun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_lun = type { i32, i32 }

@TRANSPORT_LUN_STATUS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_post_dellun(%struct.se_portal_group* %0, %struct.se_lun* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_lun*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  store %struct.se_lun* %1, %struct.se_lun** %4, align 8
  %5 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %6 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %7 = call i32 @core_tpg_shutdown_lun(%struct.se_portal_group* %5, %struct.se_lun* %6)
  %8 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %9 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %12 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %13 = call i32 @core_dev_unexport(i32 %10, %struct.se_portal_group* %11, %struct.se_lun* %12)
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %15 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i32, i32* @TRANSPORT_LUN_STATUS_FREE, align 4
  %18 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %19 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %21 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  ret i32 0
}

declare dso_local i32 @core_tpg_shutdown_lun(%struct.se_portal_group*, %struct.se_lun*) #1

declare dso_local i32 @core_dev_unexport(i32, %struct.se_portal_group*, %struct.se_lun*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
