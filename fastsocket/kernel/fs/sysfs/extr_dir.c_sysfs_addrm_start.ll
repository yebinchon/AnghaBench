; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_addrm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_addrm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_addrm_cxt = type { %struct.inode*, %struct.sysfs_dirent* }
%struct.inode = type { i32, i32 }
%struct.sysfs_dirent = type { i32 }

@sysfs_mutex = common dso_local global i32 0, align 4
@sysfs_sb = common dso_local global i32 0, align 4
@sysfs_ilookup_test = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_addrm_start(%struct.sysfs_addrm_cxt* %0, %struct.sysfs_dirent* %1) #0 {
  %3 = alloca %struct.sysfs_addrm_cxt*, align 8
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.sysfs_addrm_cxt* %0, %struct.sysfs_addrm_cxt** %3, align 8
  store %struct.sysfs_dirent* %1, %struct.sysfs_dirent** %4, align 8
  %6 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %7 = call i32 @memset(%struct.sysfs_addrm_cxt* %6, i32 0, i32 16)
  %8 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %9 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %10 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %9, i32 0, i32 1
  store %struct.sysfs_dirent* %8, %struct.sysfs_dirent** %10, align 8
  %11 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %12 = load i32, i32* @sysfs_sb, align 4
  %13 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %14 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @sysfs_ilookup_test, align 4
  %17 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %18 = call %struct.inode* @ilookup5(i32 %12, i32 %15, i32 %16, %struct.sysfs_dirent* %17)
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I_NEW, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %30 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %29, i32 0, i32 0
  store %struct.inode* %28, %struct.inode** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = call i32 @mutex_trylock(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = call i32 @mutex_lock(i32* @sysfs_mutex)
  br label %41

41:                                               ; preds = %35, %21
  br label %42

42:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @memset(%struct.sysfs_addrm_cxt*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inode* @ilookup5(i32, i32, i32, %struct.sysfs_dirent*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
