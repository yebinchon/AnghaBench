; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_cache_default_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_cache_default_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@i_has_xattr_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_cache_default_acl(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call i64 @IS_PRIVATE(%struct.inode* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %14 = call %struct.posix_acl* @reiserfs_get_acl(%struct.inode* %12, i32 %13)
  store %struct.posix_acl* %14, %struct.posix_acl** %4, align 8
  %15 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %19 = call i32 @IS_ERR(%struct.posix_acl* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %17
  %22 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %23 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @reiserfs_acl_size(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @JOURNAL_BLOCKS_PER_OBJECT(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @i_has_xattr_dir, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @reiserfs_xattr_nblocks(%struct.inode* %42, i32 %43)
  %45 = mul nsw i32 %44, 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %49 = call i32 @posix_acl_release(%struct.posix_acl* %48)
  br label %50

50:                                               ; preds = %21, %17, %11
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local %struct.posix_acl* @reiserfs_get_acl(%struct.inode*, i32) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @reiserfs_acl_size(i32) #1

declare dso_local i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode*) #1

declare dso_local i64 @JOURNAL_BLOCKS_PER_OBJECT(i32) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @reiserfs_xattr_nblocks(%struct.inode*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
