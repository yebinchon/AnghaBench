; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_can_extend_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_can_extend_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@O_SYNC = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*, %struct.inode*)* @nfs_can_extend_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_can_extend_write(%struct.file* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @O_SYNC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

15:                                               ; preds = %3
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @nfs_write_pageuptodate(%struct.page* %16, %struct.inode* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %57

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load i32, i32* @FMODE_WRITE, align 4
  %24 = call i64 @nfs_have_delegation(%struct.inode* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp eq %struct.TYPE_2__* %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OFFSET_MAX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @F_RDLCK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %27
  store i32 1, i32* %4, align 4
  br label %57

56:                                               ; preds = %47, %39, %32
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %26, %20, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @nfs_write_pageuptodate(%struct.page*, %struct.inode*) #1

declare dso_local i64 @nfs_have_delegation(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
