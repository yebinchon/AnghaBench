; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_add_system_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_add_system_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32* }
%struct.btrfs_key = type { i32 }
%struct.btrfs_chunk = type opaque
%struct.btrfs_disk_key = type { i32 }

@BTRFS_SYSTEM_CHUNK_ARRAY_SIZE = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_chunk*, i32)* @btrfs_add_system_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_add_system_chunk(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.btrfs_chunk* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.btrfs_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_super_block*, align 8
  %11 = alloca %struct.btrfs_disk_key, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %7, align 8
  store %struct.btrfs_chunk* %2, %struct.btrfs_chunk** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %17, align 8
  store %struct.btrfs_super_block* %18, %struct.btrfs_super_block** %10, align 8
  %19 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %10, align 8
  %20 = call i64 @btrfs_super_sys_array_size(%struct.btrfs_super_block* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i64, i64* @BTRFS_SYSTEM_CHUNK_ARRAY_SIZE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EFBIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %57

30:                                               ; preds = %4
  %31 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %10, align 8
  %32 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %13, align 8
  %36 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %37 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %11, %struct.btrfs_key* %36)
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @memcpy(i32* %38, %struct.btrfs_disk_key* %11, i32 4)
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %8, align 8
  %44 = bitcast %struct.btrfs_chunk* %43 to %struct.btrfs_disk_key*
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32* %42, %struct.btrfs_disk_key* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @btrfs_set_super_sys_array_size(%struct.btrfs_super_block* %51, i64 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %30, %27
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @btrfs_super_sys_array_size(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_set_super_sys_array_size(%struct.btrfs_super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
