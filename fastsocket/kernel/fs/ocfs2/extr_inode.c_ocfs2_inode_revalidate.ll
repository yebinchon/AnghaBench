; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_inode_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_inode_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"(inode = 0x%p, ino = %llu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"eep, no inode!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"inode deleted!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_revalidate(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i64 [ %15, %11 ], [ 0, %16 ]
  %19 = call i32 @mlog_entry(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.inode* %8, i64 %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %67

46:                                               ; preds = %26
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = call i32 @ocfs2_inode_lock(%struct.inode* %51, i32* null, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %67

64:                                               ; preds = %46
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call i32 @ocfs2_inode_unlock(%struct.inode* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %63, %38, %22
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @mlog_exit(i32 %68)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
