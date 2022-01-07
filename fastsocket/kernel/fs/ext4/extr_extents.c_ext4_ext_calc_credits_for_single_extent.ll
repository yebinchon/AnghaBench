; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_calc_credits_for_single_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_calc_credits_for_single_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_calc_credits_for_single_extent(%struct.inode* %0, i32 %1, %struct.ext4_ext_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %7, align 8
  %10 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %11 = icmp ne %struct.ext4_ext_path* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @ext_depth(%struct.inode* %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %15, i64 %17
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %24, i64 %26
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  %33 = icmp slt i64 %23, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %12
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @EXT4_META_TRANS_BLOCKS(i32 %37)
  %39 = add nsw i32 2, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_META_TRANS_BLOCKS(i32) #1

declare dso_local i32 @ext4_chunk_trans_blocks(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
