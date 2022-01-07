; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_device_removal.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_device_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@ztest_spa = common dso_local global %struct.TYPE_13__* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_device_removal_active = common dso_local global i64 0, align 8
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@POOL_SCAN_SCRUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_device_removal(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ztest_spa, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %11 = load i64, i64* @ztest_device_removal_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load i32, i32* @SCL_VDEV, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = load i32, i32* @RW_READER, align 4
  %20 = call i32 @spa_config_enter(%struct.TYPE_13__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i64, i64* @B_FALSE, align 8
  %24 = call i32 @ztest_random_vdev_top(%struct.TYPE_13__* %22, i64 %23)
  %25 = call %struct.TYPE_12__* @vdev_lookup_top(%struct.TYPE_13__* %21, i32 %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = load i32, i32* @SCL_VDEV, align 4
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @spa_config_exit(%struct.TYPE_13__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* @B_FALSE, align 8
  %36 = call i32 @spa_vdev_remove(%struct.TYPE_13__* %33, i32 %34, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %15
  %40 = load i64, i64* @B_TRUE, align 8
  store i64 %40, i64* @ztest_device_removal_active, align 8
  %41 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %42

42:                                               ; preds = %47, %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i32 @spa_get_dsl(%struct.TYPE_13__* %48)
  %50 = call i32 @txg_wait_synced(i32 %49, i32 0)
  br label %42

51:                                               ; preds = %42
  br label %54

52:                                               ; preds = %15
  %53 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %75

54:                                               ; preds = %51
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = load i32, i32* @POOL_SCAN_SCRUB, align 4
  %57 = call i32 @spa_scan(%struct.TYPE_13__* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %66, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = call i32 @spa_get_dsl(%struct.TYPE_13__* %62)
  %64 = call i64 @dsl_scan_scrubbing(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = call i32 @spa_get_dsl(%struct.TYPE_13__* %67)
  %69 = call i32 @txg_wait_synced(i32 %68, i32 0)
  br label %61

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %54
  %72 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %73 = load i64, i64* @B_FALSE, align 8
  store i64 %73, i64* @ztest_device_removal_active, align 8
  %74 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %75

75:                                               ; preds = %71, %52, %13
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @vdev_lookup_top(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ztest_random_vdev_top(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @spa_vdev_remove(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_scan(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @dsl_scan_scrubbing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
