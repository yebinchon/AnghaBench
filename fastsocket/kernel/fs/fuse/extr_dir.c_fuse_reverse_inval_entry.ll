; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_reverse_inval_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_reverse_inval_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@fuse_inode_eq = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_reverse_inval_entry(%struct.super_block* %0, i32 %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %12 = load i32, i32* @ENOTDIR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @fuse_inode_eq, align 4
  %17 = call %struct.inode* @ilookup5(%struct.super_block* %14, i32 %15, i32 %16, i32* %6)
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_ISDIR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %57

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call %struct.dentry* @d_find_alias(%struct.inode* %36)
  store %struct.dentry* %37, %struct.dentry** %10, align 8
  %38 = load %struct.dentry*, %struct.dentry** %10, align 8
  %39 = icmp ne %struct.dentry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %57

41:                                               ; preds = %33
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = load %struct.qstr*, %struct.qstr** %7, align 8
  %44 = call %struct.dentry* @d_lookup(%struct.dentry* %42, %struct.qstr* %43)
  store %struct.dentry* %44, %struct.dentry** %11, align 8
  %45 = load %struct.dentry*, %struct.dentry** %10, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %57

50:                                               ; preds = %41
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @fuse_invalidate_attr(%struct.inode* %51)
  %53 = load %struct.dentry*, %struct.dentry** %11, align 8
  %54 = call i32 @fuse_invalidate_entry(%struct.dentry* %53)
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = call i32 @dput(%struct.dentry* %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %50, %49, %40, %32
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = call i32 @iput(%struct.inode* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
