; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_index_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_index_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@AT_INDEX_ALLOCATION = common dso_local global i32 0, align 4
@ntfs_test_inode = common dso_local global i64 0, align 8
@ntfs_init_locked_inode = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ntfs_index_iget(%struct.inode* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @AT_INDEX_ALLOCATION, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i32* %17, i32** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @ntfs_test_inode, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @ntfs_init_locked_inode, align 8
  %29 = trunc i64 %28 to i32
  %30 = call %struct.inode* @iget5_locked(i32 %23, i32 %25, i32 %27, i32 %29, %struct.TYPE_3__* %10)
  store %struct.inode* %30, %struct.inode** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = icmp ne %struct.inode* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.inode* @ERR_PTR(i32 %39)
  store %struct.inode* %40, %struct.inode** %4, align 8
  br label %65

41:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I_NEW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call i32 @ntfs_read_locked_index_inode(%struct.inode* %49, %struct.inode* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @unlock_new_inode(%struct.inode* %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @iput(%struct.inode* %59)
  %61 = load i32, i32* %9, align 4
  %62 = call %struct.inode* @ERR_PTR(i32 %61)
  store %struct.inode* %62, %struct.inode** %8, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %64, %struct.inode** %4, align 8
  br label %65

65:                                               ; preds = %63, %37
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %66
}

declare dso_local %struct.inode* @iget5_locked(i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_read_locked_index_inode(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
