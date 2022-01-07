; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___get_extent_inline_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___get_extent_inline_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_extent_item = type { i32 }
%struct.btrfs_extent_inline_ref = type { i32 }
%struct.btrfs_tree_block_info = type { i32 }

@BTRFS_EXTENT_FLAG_TREE_BLOCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.extent_buffer*, %struct.btrfs_extent_item*, i64, %struct.btrfs_extent_inline_ref**, i32*)* @__get_extent_inline_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_extent_inline_ref(i64* %0, %struct.extent_buffer* %1, %struct.btrfs_extent_item* %2, i64 %3, %struct.btrfs_extent_inline_ref** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_extent_item*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_extent_inline_ref**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_tree_block_info*, align 8
  store i64* %0, i64** %8, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %9, align 8
  store %struct.btrfs_extent_item* %2, %struct.btrfs_extent_item** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.btrfs_extent_inline_ref** %4, %struct.btrfs_extent_inline_ref*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %6
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %22 = load %struct.btrfs_extent_item*, %struct.btrfs_extent_item** %10, align 8
  %23 = call i32 @btrfs_extent_flags(%struct.extent_buffer* %21, %struct.btrfs_extent_item* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @BTRFS_EXTENT_FLAG_TREE_BLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.btrfs_extent_item*, %struct.btrfs_extent_item** %10, align 8
  %30 = getelementptr inbounds %struct.btrfs_extent_item, %struct.btrfs_extent_item* %29, i64 1
  %31 = bitcast %struct.btrfs_extent_item* %30 to %struct.btrfs_tree_block_info*
  store %struct.btrfs_tree_block_info* %31, %struct.btrfs_tree_block_info** %16, align 8
  %32 = load %struct.btrfs_tree_block_info*, %struct.btrfs_tree_block_info** %16, align 8
  %33 = getelementptr inbounds %struct.btrfs_tree_block_info, %struct.btrfs_tree_block_info* %32, i64 1
  %34 = bitcast %struct.btrfs_tree_block_info* %33 to %struct.btrfs_extent_inline_ref*
  %35 = load %struct.btrfs_extent_inline_ref**, %struct.btrfs_extent_inline_ref*** %12, align 8
  store %struct.btrfs_extent_inline_ref* %34, %struct.btrfs_extent_inline_ref** %35, align 8
  br label %41

36:                                               ; preds = %20
  %37 = load %struct.btrfs_extent_item*, %struct.btrfs_extent_item** %10, align 8
  %38 = getelementptr inbounds %struct.btrfs_extent_item, %struct.btrfs_extent_item* %37, i64 1
  %39 = bitcast %struct.btrfs_extent_item* %38 to %struct.btrfs_extent_inline_ref*
  %40 = load %struct.btrfs_extent_inline_ref**, %struct.btrfs_extent_inline_ref*** %12, align 8
  store %struct.btrfs_extent_inline_ref* %39, %struct.btrfs_extent_inline_ref** %40, align 8
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.btrfs_extent_inline_ref**, %struct.btrfs_extent_inline_ref*** %12, align 8
  %43 = load %struct.btrfs_extent_inline_ref*, %struct.btrfs_extent_inline_ref** %42, align 8
  %44 = ptrtoint %struct.btrfs_extent_inline_ref* %43 to i64
  %45 = load i64*, i64** %8, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.btrfs_extent_item*, %struct.btrfs_extent_item** %10, align 8
  %50 = bitcast %struct.btrfs_extent_item* %49 to i8*
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = icmp uge i8* %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %90

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %6
  %59 = load %struct.btrfs_extent_item*, %struct.btrfs_extent_item** %10, align 8
  %60 = ptrtoint %struct.btrfs_extent_item* %59 to i64
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %14, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.btrfs_extent_inline_ref*
  %66 = load %struct.btrfs_extent_inline_ref**, %struct.btrfs_extent_inline_ref*** %12, align 8
  store %struct.btrfs_extent_inline_ref* %65, %struct.btrfs_extent_inline_ref** %66, align 8
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %68 = load %struct.btrfs_extent_inline_ref**, %struct.btrfs_extent_inline_ref*** %12, align 8
  %69 = load %struct.btrfs_extent_inline_ref*, %struct.btrfs_extent_inline_ref** %68, align 8
  %70 = call i32 @btrfs_extent_inline_ref_type(%struct.extent_buffer* %67, %struct.btrfs_extent_inline_ref* %69)
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @btrfs_extent_inline_ref_size(i32 %73)
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ugt i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %90

89:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %88, %54
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @btrfs_extent_flags(%struct.extent_buffer*, %struct.btrfs_extent_item*) #1

declare dso_local i32 @btrfs_extent_inline_ref_type(%struct.extent_buffer*, %struct.btrfs_extent_inline_ref*) #1

declare dso_local i64 @btrfs_extent_inline_ref_size(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
