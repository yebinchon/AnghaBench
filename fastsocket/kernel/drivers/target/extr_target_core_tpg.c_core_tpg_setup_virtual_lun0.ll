; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_setup_virtual_lun0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_setup_virtual_lun0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_portal_group = type { %struct.se_lun }
%struct.se_lun = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@g_lun0_dev = common dso_local global %struct.se_device* null, align 8
@TRANSPORT_LUNFLAGS_READ_ONLY = common dso_local global i32 0, align 4
@TRANSPORT_LUN_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*)* @core_tpg_setup_virtual_lun0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_tpg_setup_virtual_lun0(%struct.se_portal_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  %8 = load %struct.se_device*, %struct.se_device** @g_lun0_dev, align 8
  store %struct.se_device* %8, %struct.se_device** %4, align 8
  %9 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %10 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %9, i32 0, i32 0
  store %struct.se_lun* %10, %struct.se_lun** %5, align 8
  %11 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %13 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @TRANSPORT_LUN_STATUS_FREE, align 4
  %15 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %16 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %18 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %17, i32 0, i32 6
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %21 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %20, i32 0, i32 5
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %24 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %27 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %30 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %33 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %36 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %39 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.se_device*, %struct.se_device** %4, align 8
  %42 = call i32 @core_tpg_post_addlun(%struct.se_portal_group* %38, %struct.se_lun* %39, i32 %40, %struct.se_device* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @core_tpg_post_addlun(%struct.se_portal_group*, %struct.se_lun*, i32, %struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
