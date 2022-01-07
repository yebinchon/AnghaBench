; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32 }
%struct.kstat = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %8, align 8
  %19 = load %struct.super_block*, %struct.super_block** %8, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %9, align 8
  %22 = call i32 (...) @mlog_entry_void()
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = call i32 @ocfs2_inode_revalidate(%struct.dentry* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %45

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load %struct.kstat*, %struct.kstat** %6, align 8
  %39 = call i32 @generic_fillattr(%struct.inode* %37, %struct.kstat* %38)
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kstat*, %struct.kstat** %6, align 8
  %44 = getelementptr inbounds %struct.kstat, %struct.kstat* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @mlog_exit(i32 %46)
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_inode_revalidate(%struct.dentry*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
