; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_release_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_release_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT4_STATE_DA_ALLOC_CLOSE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ext4_release_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_release_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = load i32, i32* @EXT4_STATE_DA_ALLOC_CLOSE, align 4
  %7 = call i64 @ext4_test_inode_state(%struct.inode* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @ext4_alloc_da_blocks(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* @EXT4_STATE_DA_ALLOC_CLOSE, align 4
  %14 = call i32 @ext4_clear_inode_state(%struct.inode* %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FMODE_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @down_write(i32* %36)
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call i32 @ext4_discard_preallocations(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @up_write(i32* %42)
  br label %44

44:                                               ; preds = %33, %27, %22, %15
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i64 @is_dx(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ext4_htree_free_dir_info(i64 %56)
  br label %58

58:                                               ; preds = %53, %48, %44
  ret i32 0
}

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_alloc_da_blocks(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @is_dx(%struct.inode*) #1

declare dso_local i32 @ext4_htree_free_dir_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
