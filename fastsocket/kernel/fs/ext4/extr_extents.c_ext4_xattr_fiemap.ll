; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_xattr_fiemap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_xattr_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.ext4_iloc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DATA_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fiemap_extent_info*)* @ext4_xattr_fiemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fiemap_extent_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_iloc, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %21 = call i64 @ext4_test_inode_state(%struct.inode* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @ext4_get_inode_loc(%struct.inode* %24, %struct.ext4_iloc* %11)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %86

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_7__* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @FIEMAP_EXTENT_DATA_INLINE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %69

57:                                               ; preds = %2
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %57, %30
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %73, i32 0, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  br label %84

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %28
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
