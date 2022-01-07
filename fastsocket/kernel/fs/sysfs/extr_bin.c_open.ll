; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.bin_buffer*, %struct.TYPE_5__ }
%struct.bin_buffer = type { i32, %struct.file*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.bin_attribute* }
%struct.bin_attribute = type { i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@sysfs_bin_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca %struct.bin_attribute*, align 8
  %8 = alloca %struct.bin_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %14, align 8
  store %struct.sysfs_dirent* %15, %struct.sysfs_dirent** %6, align 8
  %16 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %17 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.bin_attribute*, %struct.bin_attribute** %18, align 8
  store %struct.bin_attribute* %19, %struct.bin_attribute** %7, align 8
  store %struct.bin_buffer* null, %struct.bin_buffer** %8, align 8
  %20 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %21 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %2
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FMODE_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %37 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %42 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %103

46:                                               ; preds = %40, %35, %26
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FMODE_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %55 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %60 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %103

64:                                               ; preds = %58, %53, %46
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.bin_buffer* @kzalloc(i32 24, i32 %67)
  store %struct.bin_buffer* %68, %struct.bin_buffer** %8, align 8
  %69 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %70 = icmp ne %struct.bin_buffer* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %103

72:                                               ; preds = %64
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @kmalloc(i32 %73, i32 %74)
  %76 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %77 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %79 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %103

83:                                               ; preds = %72
  %84 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %84, i32 0, i32 2
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %89 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %88, i32 0, i32 1
  store %struct.file* %87, %struct.file** %89, align 8
  %90 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %91 = load %struct.file*, %struct.file** %5, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 1
  store %struct.bin_buffer* %90, %struct.bin_buffer** %92, align 8
  %93 = call i32 @mutex_lock(i32* @sysfs_bin_lock)
  %94 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %95 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %94, i32 0, i32 0
  %96 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %97 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @hlist_add_head(i32* %95, i32* %98)
  %100 = call i32 @mutex_unlock(i32* @sysfs_bin_lock)
  %101 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %102 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %101)
  store i32 0, i32* %3, align 4
  br label %109

103:                                              ; preds = %82, %71, %63, %45
  %104 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %105 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %104)
  %106 = load %struct.bin_buffer*, %struct.bin_buffer** %8, align 8
  %107 = call i32 @kfree(%struct.bin_buffer* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %103, %83, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local %struct.bin_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @kfree(%struct.bin_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
