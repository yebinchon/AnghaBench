; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_user.c_snapshot_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_user.c_snapshot_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot_data = type { i32, i32, i64, i64, i64, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.snapshot_data* }

@pm_mutex = common dso_local global i32 0, align 4
@snapshot_device_available = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snapshot_state = common dso_local global %struct.snapshot_data zeroinitializer, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@swsusp_resume_device = common dso_local global i64 0, align 8
@PM_HIBERNATION_PREPARE = common dso_local global i32 0, align 4
@PM_POST_HIBERNATION = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@PM_RESTORE_PREPARE = common dso_local global i32 0, align 4
@PM_POST_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snapshot_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snapshot_data*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = call i32 @mutex_lock(i32* @pm_mutex)
  %8 = call i32 @atomic_add_unless(i32* @snapshot_device_available, i32 -1, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %98

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @O_ACCMODE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call i32 @atomic_inc(i32* @snapshot_device_available)
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %98

25:                                               ; preds = %13
  %26 = call i64 (...) @create_basic_memory_bitmaps()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 @atomic_inc(i32* @snapshot_device_available)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %98

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = call i32 @nonseekable_open(%struct.inode* %33, %struct.file* %34)
  store %struct.snapshot_data* @snapshot_state, %struct.snapshot_data** %5, align 8
  %36 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  store %struct.snapshot_data* %36, %struct.snapshot_data** %38, align 8
  %39 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %40 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %39, i32 0, i32 5
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @O_ACCMODE, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %32
  %50 = load i64, i64* @swsusp_resume_device, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @swsusp_resume_device, align 8
  %54 = call i32 @swap_type_of(i64 %53, i32 0, i32* null)
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ -1, %55 ]
  %58 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %59 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %62 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @PM_HIBERNATION_PREPARE, align 4
  %64 = call i32 @pm_notifier_call_chain(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @PM_POST_HIBERNATION, align 4
  %69 = call i32 @pm_notifier_call_chain(i32 %68)
  br label %70

70:                                               ; preds = %67, %56
  br label %86

71:                                               ; preds = %32
  %72 = call i32 (...) @wait_for_device_probe()
  %73 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %74 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load i32, i32* @O_WRONLY, align 4
  %76 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %77 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @PM_RESTORE_PREPARE, align 4
  %79 = call i32 @pm_notifier_call_chain(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @PM_POST_RESTORE, align 4
  %84 = call i32 @pm_notifier_call_chain(i32 %83)
  br label %85

85:                                               ; preds = %82, %71
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @atomic_inc(i32* @snapshot_device_available)
  br label %91

91:                                               ; preds = %89, %86
  %92 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %93 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %95 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %97 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %28, %21, %10
  %99 = call i32 @mutex_unlock(i32* @pm_mutex)
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @create_basic_memory_bitmaps(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @swap_type_of(i64, i32, i32*) #1

declare dso_local i32 @pm_notifier_call_chain(i32) #1

declare dso_local i32 @wait_for_device_probe(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
