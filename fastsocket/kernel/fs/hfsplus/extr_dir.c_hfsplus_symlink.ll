; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_dir.c_hfsplus_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_dir.c_hfsplus_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @hfsplus_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %8, align 8
  %15 = load i32, i32* @S_IFLNK, align 4
  %16 = load i32, i32* @S_IRWXUGO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.inode* @hfsplus_new_inode(%struct.super_block* %14, i32 %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = call i32 @page_symlink(%struct.inode* %25, i8* %26, i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @hfsplus_delete_inode(%struct.inode* %36)
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = call i32 @iput(%struct.inode* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %24
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call i32 @mark_inode_dirty(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i32 @hfsplus_create_cat(i32 %46, %struct.inode* %47, i32* %49, %struct.inode* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %41
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hfsplus_instantiate(%struct.dentry* %55, %struct.inode* %56, i32 %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = call i32 @mark_inode_dirty(%struct.inode* %61)
  br label %63

63:                                               ; preds = %54, %41
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %33, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.inode* @hfsplus_new_inode(%struct.super_block*, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hfsplus_delete_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfsplus_create_cat(i32, %struct.inode*, i32*, %struct.inode*) #1

declare dso_local i32 @hfsplus_instantiate(%struct.dentry*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
