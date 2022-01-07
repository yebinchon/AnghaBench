; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_file.c_ecryptfs_read_update_atime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_file.c_ecryptfs_read_update_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32 }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }

@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @ecryptfs_read_update_atime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_read_update_atime(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.file*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %12, align 8
  %16 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %17 = load %struct.iovec*, %struct.iovec** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @generic_file_aio_read(%struct.kiocb* %16, %struct.iovec* %17, i64 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @EIOCBQUEUED, align 4
  %22 = sub nsw i32 0, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %27 = call i32 @wait_on_sync_kiocb(%struct.kiocb* %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.file*, %struct.file** %12, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.dentry* @ecryptfs_dentry_to_lower(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %10, align 8
  %37 = load %struct.file*, %struct.file** %12, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.vfsmount* @ecryptfs_dentry_to_lower_mnt(i32 %40)
  store %struct.vfsmount* %41, %struct.vfsmount** %11, align 8
  %42 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = call i32 @touch_atime(%struct.vfsmount* %42, %struct.dentry* %43)
  br label %45

45:                                               ; preds = %31, %28
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @generic_file_aio_read(%struct.kiocb*, %struct.iovec*, i64, i32) #1

declare dso_local i32 @wait_on_sync_kiocb(%struct.kiocb*) #1

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(i32) #1

declare dso_local %struct.vfsmount* @ecryptfs_dentry_to_lower_mnt(i32) #1

declare dso_local i32 @touch_atime(%struct.vfsmount*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
