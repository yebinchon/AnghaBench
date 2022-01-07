; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_create_new_inode_locks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_create_new_inode_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"Inode %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_create_new_inode_locks(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ocfs2_super* @OCFS2_SB(i32 %7)
  store %struct.ocfs2_super* %8, %struct.ocfs2_super** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = icmp ne %struct.inode* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @ocfs2_inode_is_new(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = call i32 (...) @mlog_entry_void()
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @ocfs2_create_new_lock(%struct.ocfs2_super* %26, i32* %29, i32 1, i32 1)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %59

36:                                               ; preds = %1
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @ocfs2_create_new_lock(%struct.ocfs2_super* %37, i32* %40, i32 1, i32 0)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %59

47:                                               ; preds = %36
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @ocfs2_create_new_lock(%struct.ocfs2_super* %48, i32* %51, i32 0, i32 0)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %55, %44, %33
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @mlog_exit(i32 %60)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_inode_is_new(%struct.inode*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_create_new_lock(%struct.ocfs2_super*, i32*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
