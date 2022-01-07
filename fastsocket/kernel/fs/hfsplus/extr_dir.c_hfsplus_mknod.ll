; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_dir.c_hfsplus_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_dir.c_hfsplus_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hfsplus_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.inode* @hfsplus_new_inode(%struct.super_block* %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = call i32 @hfsplus_create_cat(i32 %27, %struct.inode* %28, i32* %30, %struct.inode* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = call i32 @hfsplus_delete_inode(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %56

43:                                               ; preds = %24
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @init_special_inode(%struct.inode* %44, i32 %45, i32 %46)
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @hfsplus_instantiate(%struct.dentry* %48, %struct.inode* %49, i32 %52)
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @mark_inode_dirty(%struct.inode* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %43, %35, %21
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.inode* @hfsplus_new_inode(%struct.super_block*, i32) #1

declare dso_local i32 @hfsplus_create_cat(i32, %struct.inode*, i32*, %struct.inode*) #1

declare dso_local i32 @hfsplus_delete_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @hfsplus_instantiate(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
