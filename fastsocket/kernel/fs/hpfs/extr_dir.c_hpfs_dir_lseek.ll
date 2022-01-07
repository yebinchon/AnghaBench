; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dir.c_hpfs_dir_lseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dir.c_hpfs_dir_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_inode_info = type { i32 }

@ESPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @hpfs_dir_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_dir_lseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.hpfs_inode_info*, align 8
  %13 = alloca %struct.super_block*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  %24 = add nsw i32 %14, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %11, align 8
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %31)
  store %struct.hpfs_inode_info* %32, %struct.hpfs_inode_info** %12, align 8
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %13, align 8
  %36 = call i32 (...) @lock_kernel()
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 11
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %42, %39, %22
  br label %84

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.super_block*, %struct.super_block** %13, align 8
  %57 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %12, align 8
  %58 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @hpfs_de_as_down_as_possible(%struct.super_block* %56, i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %79, %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %11, align 8
  %70 = call i64 @map_pos_dirent(%struct.inode* %69, i32* %9, %struct.quad_buffer_head* %10)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  br label %75

74:                                               ; preds = %68
  br label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 12
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %89

79:                                               ; preds = %75
  br label %64

80:                                               ; preds = %64
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %51
  %85 = call i32 (...) @unlock_kernel()
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 %86, i32* %4, align 4
  br label %96

89:                                               ; preds = %78, %74
  %90 = load %struct.inode*, %struct.inode** %11, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = call i32 (...) @unlock_kernel()
  %94 = load i32, i32* @ESPIPE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %84
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hpfs_de_as_down_as_possible(%struct.super_block*, i32) #1

declare dso_local i64 @map_pos_dirent(%struct.inode*, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
