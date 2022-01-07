; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_addrm_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_addrm_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_addrm_cxt = type { %struct.sysfs_dirent*, i64, %struct.inode* }
%struct.sysfs_dirent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sysfs_dirent* }
%struct.inode = type { i32, i32, i32 }

@sysfs_mutex = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_addrm_finish(%struct.sysfs_addrm_cxt* %0) #0 {
  %2 = alloca %struct.sysfs_addrm_cxt*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_addrm_cxt* %0, %struct.sysfs_addrm_cxt** %2, align 8
  %5 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %6 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %2, align 8
  %7 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %6, i32 0, i32 2
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %2, align 8
  %12 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %11, i32 0, i32 2
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %3, align 8
  %14 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %2, align 8
  %15 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32, i32* @CURRENT_TIME, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %10
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @iput(%struct.inode* %28)
  br label %30

30:                                               ; preds = %24, %1
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %2, align 8
  %33 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %32, i32 0, i32 0
  %34 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %33, align 8
  %35 = icmp ne %struct.sysfs_dirent* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %2, align 8
  %38 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %37, i32 0, i32 0
  %39 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %38, align 8
  store %struct.sysfs_dirent* %39, %struct.sysfs_dirent** %4, align 8
  %40 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %41 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %42, align 8
  %44 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %2, align 8
  %45 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %44, i32 0, i32 0
  store %struct.sysfs_dirent* %43, %struct.sysfs_dirent** %45, align 8
  %46 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %47 = call i32 @sysfs_drop_dentry(%struct.sysfs_dirent* %46)
  %48 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %49 = call i32 @sysfs_deactivate(%struct.sysfs_dirent* %48)
  %50 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %51 = call i32 @unmap_bin_file(%struct.sysfs_dirent* %50)
  %52 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %53 = call i32 @sysfs_put(%struct.sysfs_dirent* %52)
  br label %31

54:                                               ; preds = %31
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @sysfs_drop_dentry(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_deactivate(%struct.sysfs_dirent*) #1

declare dso_local i32 @unmap_bin_file(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
