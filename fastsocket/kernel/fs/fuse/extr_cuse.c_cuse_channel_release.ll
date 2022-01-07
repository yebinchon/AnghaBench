; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_channel_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_channel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.cuse_conn = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@cuse_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cuse_channel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_channel_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cuse_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cuse_conn* @fc_to_cc(i32 %9)
  store %struct.cuse_conn* %10, %struct.cuse_conn** %5, align 8
  %11 = call i32 @spin_lock(i32* @cuse_lock)
  %12 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %13 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %12, i32 0, i32 3
  %14 = call i32 @list_del_init(i32* %13)
  %15 = call i32 @spin_unlock(i32* @cuse_lock)
  %16 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %17 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %22 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @device_unregister(i64 %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %27 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %32 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @unregister_chrdev_region(i32 %35, i32 1)
  %37 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %38 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @cdev_del(%struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %30, %25
  %42 = load %struct.cuse_conn*, %struct.cuse_conn** %5, align 8
  %43 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %42, i32 0, i32 0
  %44 = call i32 @fuse_conn_kill(i32* %43)
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = call i32 @fuse_dev_release(%struct.inode* %45, %struct.file* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.cuse_conn* @fc_to_cc(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @device_unregister(i64) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @fuse_conn_kill(i32*) #1

declare dso_local i32 @fuse_dev_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
