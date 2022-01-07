; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_del_sys_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_del_sys_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32* }
%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_chunk = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_CHUNK_ITEM_KEY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i64, i64)* @btrfs_del_sys_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_del_sys_chunk(%struct.btrfs_root* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_super_block*, align 8
  %8 = alloca %struct.btrfs_disk_key*, align 8
  %9 = alloca %struct.btrfs_chunk*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %20, align 8
  store %struct.btrfs_super_block* %21, %struct.btrfs_super_block** %7, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %22 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %23 = call i64 @btrfs_super_sys_array_size(%struct.btrfs_super_block* %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  store i64 0, i64* %15, align 8
  br label %27

27:                                               ; preds = %88, %3
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = bitcast i32* %32 to %struct.btrfs_disk_key*
  store %struct.btrfs_disk_key* %33, %struct.btrfs_disk_key** %8, align 8
  %34 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %8, align 8
  %35 = call i32 @btrfs_disk_key_to_cpu(%struct.btrfs_key* %16, %struct.btrfs_disk_key* %34)
  store i64 4, i64* %14, align 8
  %36 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BTRFS_CHUNK_ITEM_KEY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = bitcast i32* %43 to %struct.btrfs_chunk*
  store %struct.btrfs_chunk* %44, %struct.btrfs_chunk** %9, align 8
  %45 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %46 = call i64 @btrfs_stack_chunk_num_stripes(%struct.btrfs_chunk* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @btrfs_chunk_item_size(i64 %47)
  %49 = load i64, i64* %14, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %14, align 8
  br label %54

51:                                               ; preds = %31
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %89

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add nsw i64 %70, %71
  %73 = sub nsw i64 %69, %72
  %74 = call i32 @memmove(i32* %65, i32* %68, i64 %73)
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %13, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %13, align 8
  %78 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @btrfs_set_super_sys_array_size(%struct.btrfs_super_block* %78, i64 %79)
  br label %88

81:                                               ; preds = %59, %54
  %82 = load i64, i64* %14, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %10, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %81, %64
  br label %27

89:                                               ; preds = %51, %27
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local i64 @btrfs_super_sys_array_size(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_disk_key_to_cpu(%struct.btrfs_key*, %struct.btrfs_disk_key*) #1

declare dso_local i64 @btrfs_stack_chunk_num_stripes(%struct.btrfs_chunk*) #1

declare dso_local i64 @btrfs_chunk_item_size(i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @btrfs_set_super_sys_array_size(%struct.btrfs_super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
