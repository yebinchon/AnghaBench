; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32*, i32 }

@AT_UNUSED = common dso_local global i32 0, align 4
@ntfs_test_inode = common dso_local global i64 0, align 8
@ntfs_init_locked_inode = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ntfs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load i32, i32* @AT_UNUSED, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ntfs_test_inode, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* @ntfs_init_locked_inode, align 8
  %20 = trunc i64 %19 to i32
  %21 = call %struct.inode* @iget5_locked(%struct.super_block* %15, i64 %16, i32 %18, i32 %20, %struct.TYPE_3__* %8)
  store %struct.inode* %21, %struct.inode** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = icmp ne %struct.inode* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.inode* @ERR_PTR(i32 %30)
  store %struct.inode* %31, %struct.inode** %3, align 8
  br label %59

32:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I_NEW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i32 @ntfs_read_locked_inode(%struct.inode* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @unlock_new_inode(%struct.inode* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @iput(%struct.inode* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.inode* @ERR_PTR(i32 %55)
  store %struct.inode* %56, %struct.inode** %6, align 8
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %58, %struct.inode** %3, align 8
  br label %59

59:                                               ; preds = %57, %28
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %60
}

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_read_locked_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
