; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32* }
%struct.nameidata = type { i32 }
%struct.object_info = type { i32 }

@adfs_dentry_operations = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @adfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @adfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.object_info, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  store i32* @adfs_dentry_operations, i32** %11, align 8
  %12 = call i32 (...) @lock_kernel()
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = call i32 @adfs_dir_lookup_byname(%struct.inode* %13, i32* %15, %struct.object_info* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.inode* @adfs_iget(i32 %24, %struct.object_info* %8)
  store %struct.inode* %25, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %3
  %31 = call i32 (...) @unlock_kernel()
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @d_add(%struct.dentry* %32, %struct.inode* %33)
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  ret %struct.dentry* %36
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @adfs_dir_lookup_byname(%struct.inode*, i32*, %struct.object_info*) #1

declare dso_local %struct.inode* @adfs_iget(i32, %struct.object_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
