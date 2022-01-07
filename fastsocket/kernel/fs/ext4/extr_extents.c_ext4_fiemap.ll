; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_fiemap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fiemap_extent_info = type { i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@EXT4_FIEMAP_FLAGS = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@FIEMAP_FLAG_XATTR = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %16 = call i32 @ext4_test_inode_flag(%struct.inode* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ext4_get_block, align 4
  %24 = call i32 @generic_block_fiemap(%struct.inode* %19, %struct.fiemap_extent_info* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %80

25:                                               ; preds = %4
  %26 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %27 = load i32, i32* @EXT4_FIEMAP_FLAGS, align 4
  %28 = call i64 @fiemap_check_flags(%struct.fiemap_extent_info* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBADR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %80

33:                                               ; preds = %25
  %34 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %35 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIEMAP_FLAG_XATTR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %43 = call i32 @ext4_xattr_fiemap(%struct.inode* %41, %struct.fiemap_extent_info* %42)
  store i32 %43, i32* %11, align 4
  br label %78

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %45, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %55, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %44
  %66 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %44
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %77 = call i32 @ext4_fill_fiemap_extents(%struct.inode* %73, i32 %74, i32 %75, %struct.fiemap_extent_info* %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %68, %40
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %30, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @generic_block_fiemap(%struct.inode*, %struct.fiemap_extent_info*, i32, i32, i32) #1

declare dso_local i64 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @ext4_xattr_fiemap(%struct.inode*, %struct.fiemap_extent_info*) #1

declare dso_local i32 @ext4_fill_fiemap_extents(%struct.inode*, i32, i32, %struct.fiemap_extent_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
