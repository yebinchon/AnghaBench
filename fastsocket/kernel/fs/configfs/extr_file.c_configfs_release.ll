; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_configfs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_configfs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.configfs_buffer*, %struct.TYPE_3__ }
%struct.configfs_buffer = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.config_item = type { i32 }
%struct.configfs_attribute = type { %struct.module* }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @configfs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.configfs_attribute*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.configfs_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.config_item* @to_item(i32 %14)
  store %struct.config_item* %15, %struct.config_item** %5, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.configfs_attribute* @to_attr(%struct.TYPE_4__* %19)
  store %struct.configfs_attribute* %20, %struct.configfs_attribute** %6, align 8
  %21 = load %struct.configfs_attribute*, %struct.configfs_attribute** %6, align 8
  %22 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %21, i32 0, i32 0
  %23 = load %struct.module*, %struct.module** %22, align 8
  store %struct.module* %23, %struct.module** %7, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.configfs_buffer*, %struct.configfs_buffer** %25, align 8
  store %struct.configfs_buffer* %26, %struct.configfs_buffer** %8, align 8
  %27 = load %struct.config_item*, %struct.config_item** %5, align 8
  %28 = icmp ne %struct.config_item* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.config_item*, %struct.config_item** %5, align 8
  %31 = call i32 @config_item_put(%struct.config_item* %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.module*, %struct.module** %7, align 8
  %34 = call i32 @module_put(%struct.module* %33)
  %35 = load %struct.configfs_buffer*, %struct.configfs_buffer** %8, align 8
  %36 = icmp ne %struct.configfs_buffer* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.configfs_buffer*, %struct.configfs_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.configfs_buffer*, %struct.configfs_buffer** %8, align 8
  %44 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @free_page(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.configfs_buffer*, %struct.configfs_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %48, i32 0, i32 0
  %50 = call i32 @mutex_destroy(i32* %49)
  %51 = load %struct.configfs_buffer*, %struct.configfs_buffer** %8, align 8
  %52 = call i32 @kfree(%struct.configfs_buffer* %51)
  br label %53

53:                                               ; preds = %47, %32
  ret i32 0
}

declare dso_local %struct.config_item* @to_item(i32) #1

declare dso_local %struct.configfs_attribute* @to_attr(%struct.TYPE_4__*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.configfs_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
