; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.sysfs_buffer*, %struct.TYPE_4__ }
%struct.sysfs_buffer = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sysfs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.sysfs_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %11, align 8
  store %struct.sysfs_dirent* %12, %struct.sysfs_dirent** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %14, align 8
  store %struct.sysfs_buffer* %15, %struct.sysfs_buffer** %6, align 8
  %16 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %17 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %18 = call i32 @sysfs_put_open_dirent(%struct.sysfs_dirent* %16, %struct.sysfs_buffer* %17)
  %19 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @free_page(i64 %26)
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %30 = call i32 @kfree(%struct.sysfs_buffer* %29)
  ret i32 0
}

declare dso_local i32 @sysfs_put_open_dirent(%struct.sysfs_dirent*, %struct.sysfs_buffer*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.sysfs_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
