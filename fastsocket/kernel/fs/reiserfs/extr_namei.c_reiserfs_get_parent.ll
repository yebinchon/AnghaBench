; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.reiserfs_dir_entry = type { i32, i32* }
%struct.cpu_key = type { i32 }

@path_to_entry = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@NAME_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @reiserfs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.reiserfs_dir_entry, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %8 = load i32, i32* @path_to_entry, align 4
  %9 = call i32 @INITIALIZE_PATH(i32 %8)
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %2, align 8
  br label %54

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %6, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @reiserfs_write_lock(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @reiserfs_find_entry(%struct.inode* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* @path_to_entry, %struct.reiserfs_dir_entry* %6)
  store i32 %28, i32* %4, align 4
  %29 = call i32 @pathrelse(i32* @path_to_entry)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NAME_FOUND, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reiserfs_write_unlock(i32 %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.dentry* @ERR_PTR(i32 %39)
  store %struct.dentry* %40, %struct.dentry** %2, align 8
  br label %54

41:                                               ; preds = %21
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %6, i32 0, i32 0
  %46 = bitcast i32* %45 to %struct.cpu_key*
  %47 = call %struct.inode* @reiserfs_iget(i32 %44, %struct.cpu_key* %46)
  store %struct.inode* %47, %struct.inode** %5, align 8
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @reiserfs_write_unlock(i32 %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call %struct.dentry* @d_obtain_alias(%struct.inode* %52)
  store %struct.dentry* %53, %struct.dentry** %2, align 8
  br label %54

54:                                               ; preds = %41, %33, %17
  %55 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %55
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_find_entry(%struct.inode*, i8*, i32, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local %struct.inode* @reiserfs_iget(i32, %struct.cpu_key*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
