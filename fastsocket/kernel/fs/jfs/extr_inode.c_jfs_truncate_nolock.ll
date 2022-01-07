; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_truncate_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_truncate_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@COMMIT_Nolink = common dso_local global i32 0, align 4
@COMMIT_WMAP = common dso_local global i32 0, align 4
@COMMIT_TRUNCATE = common dso_local global i32 0, align 4
@COMMIT_PWMAP = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jfs_truncate_nolock(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sge i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @COMMIT_Nolink, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i64 @test_cflag(i32 %11, %struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @COMMIT_WMAP, align 4
  %19 = call i64 @xtTruncate(i32 0, %struct.inode* %16, i64 %17, i32 %18)
  br label %66

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %62, %20
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @txBegin(i32 %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @COMMIT_TRUNCATE, align 4
  %34 = load i32, i32* @COMMIT_PWMAP, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @xtTruncate(i32 %30, %struct.inode* %31, i64 %32, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @txEnd(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %66

46:                                               ; preds = %21
  %47 = load i32, i32* @CURRENT_TIME, align 4
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call i32 @mark_inode_dirty(%struct.inode* %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @txCommit(i32 %54, i32 1, %struct.inode** %3, i32 0)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @txEnd(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %46
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %21, label %66

66:                                               ; preds = %15, %62, %39
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i64 @xtTruncate(i32, %struct.inode*, i64, i32) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
