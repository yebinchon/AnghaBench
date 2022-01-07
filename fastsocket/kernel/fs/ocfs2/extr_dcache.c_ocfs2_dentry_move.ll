; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32*, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_dentry_move(%struct.dentry* %0, %struct.dentry* %1, %struct.inode* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = icmp eq %struct.inode* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %44

23:                                               ; preds = %4
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ocfs2_dentry_lock_put(%struct.ocfs2_super* %24, i32* %27)
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %31, %struct.inode* %32, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %43

43:                                               ; preds = %40, %23
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = call i32 @d_move(%struct.dentry* %45, %struct.dentry* %46)
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_dentry_lock_put(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
