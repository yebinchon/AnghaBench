; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_merge_bio_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_merge_bio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, i64 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.btrfs_mapping_tree }
%struct.btrfs_mapping_tree = type { i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root* }

@EXTENT_BIO_COMPRESSED = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_merge_bio_hook(%struct.page* %0, i64 %1, i64 %2, %struct.bio* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_mapping_tree*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bio* %3, %struct.bio** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_6__* @BTRFS_I(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %12, align 8
  %26 = load %struct.bio*, %struct.bio** %10, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 9
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @EXTENT_BIO_COMPRESSED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %62

36:                                               ; preds = %5
  %37 = load %struct.bio*, %struct.bio** %10, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %15, align 4
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %43, %struct.btrfs_mapping_tree** %13, align 8
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %16, align 4
  %45 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %13, align 8
  %46 = load i32, i32* @READ, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @btrfs_map_block(%struct.btrfs_mapping_tree* %45, i32 %46, i32 %47, i32* %16, i32* null, i32 0)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %56, %57
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %62

61:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %60, %35
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @btrfs_map_block(%struct.btrfs_mapping_tree*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
