; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_do_unlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_do_unlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*, i32)* @do_unlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_unlk(%struct.file* %0, i32 %1, %struct.file_lock* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs_lock_context*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file_lock* %2, %struct.file_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @nfs_sync_mapping(%struct.TYPE_3__* %20)
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call i32 @nfs_file_open_context(%struct.file* %22)
  %24 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %23)
  store %struct.nfs_lock_context* %24, %struct.nfs_lock_context** %11, align 8
  %25 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %26 = call i32 @IS_ERR(%struct.nfs_lock_context* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %4
  %29 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %30 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %29, i32 0, i32 0
  %31 = call i32 @nfs_iocounter_wait(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %33 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %32)
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %57

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %45, align 8
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %50 = call i32 %46(%struct.file* %47, i32 %48, %struct.file_lock* %49)
  store i32 %50, i32* %12, align 4
  br label %55

51:                                               ; preds = %39
  %52 = load %struct.file*, %struct.file** %6, align 8
  %53 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %54 = call i32 @do_vfs_lock(%struct.file* %52, %struct.file_lock* %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %36
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @nfs_sync_mapping(%struct.TYPE_3__*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs_iocounter_wait(i32*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @do_vfs_lock(%struct.file*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
