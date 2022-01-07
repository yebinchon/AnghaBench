; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_is_dx_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_is_dx_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_FEATURE_COMPAT_DIR_INDEX = common dso_local global i32 0, align 4
@EXT4_INODE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @is_dx_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dx_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 1
  %7 = load %struct.super_block*, %struct.super_block** %6, align 8
  store %struct.super_block* %7, %struct.super_block** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  %11 = load i32, i32* @EXT4_FEATURE_COMPAT_DIR_INDEX, align 4
  %12 = call i64 @EXT4_HAS_COMPAT_FEATURE(%struct.super_block* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load i32, i32* @EXT4_INODE_INDEX, align 4
  %17 = call i64 @ext4_test_inode_flag(%struct.inode* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %14
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @EXT4_HAS_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
